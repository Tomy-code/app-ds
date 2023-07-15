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
    @user.save
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, status: :see_other
  end

  def send_daily
    users = User.all(params[:id])
    users.each. do |user|
      UserMailer.send_daily_newsletter(user).deliver_now
    end
  end

private

def user_params
  params.require(:user).permit(:emailadress)
end
