class UserMailer < ApplicationMailer
  def send_daily_newsletter(user)
    @user = user
    mail(to: user.emailadress, subject: 'Votre fait historique quotidien')
  end
end
