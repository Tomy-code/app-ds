class NewsletterMailer < ApplicationMailer
  def send_daily_newsletter(emailadress, content)
    @content = content
    mail(to: emailadress, body: 'something', subject: 'Votre fait historique quotidien', delivery_method: :letter_opener)
  end
end
