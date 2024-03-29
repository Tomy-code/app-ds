class UserMailer < ApplicationMailer
  default to: -> { User.pluck(:emailadress) },
  from: 'thomasandrieu1997@gmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Bienvenue chez DailyStory')
  end

  def send_daily_newsletter
    @user = params [:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Votre fait historique quotidien')
  end
end
