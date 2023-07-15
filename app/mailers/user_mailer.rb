class UserMailer < ApplicationMailer
  def send_daily_newsletter(user)
    @user = user
    mail(to: user, subject: 'Votre fait historique quotidien')
  end
end
