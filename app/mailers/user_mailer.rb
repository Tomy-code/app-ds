class UserMailer < ApplicationMailer
  def send_daily_newsletter()
    mail(to: 'thomasandrieu1997@gmail.com', subject: 'Votre fait historique quotidien')
  end
end
