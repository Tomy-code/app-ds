class UserMailer < ApplicationMailer
  def send_daily_newsletter(users)
    @users = users
    mail(to: users.emailadress, subject: 'Votre fait historique quotidien')
  end
end
