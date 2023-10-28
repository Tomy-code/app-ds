class UserMailer < ApplicationMailer
  default to: -> { User.pluck(:emailadress) },
  from: 'thomasandrieu1997@gmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.emailadress, subject: 'Bienvenue chez DailyStory')
  end

  def send_daily_newsletter(user)
    @user = user
    mail(to: user, subject: 'Votre fait historique quotidien')
  end
end
