class NewsletterMailer < ApplicationMailer
  def send_daily_newsletter(emailadress, content)
    @content = content
    mail(to: emailadress, subject: 'Votre fait historique quotidien')
  end
end
