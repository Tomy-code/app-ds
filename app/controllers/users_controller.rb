class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.with(user: @user).welcome_email.deliver_later

        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
    @user.save
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, status: :see_other
  end

  def send_daily
    users = User.all.emailadress
    users.each. do |user|
      UserMailer.send_daily_newsletter(users).deliver_now
  end
end

private

def user_params
  params.require(:user).permit(:emailadress)
end
