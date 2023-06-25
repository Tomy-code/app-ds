class NewslettersController < ApplicationController
  def send_daily
    User.find_each do |user|
      content = 'Contenu de la newsletter'  # Ici, générez le contenu de votre newsletter
      NewsletterMailer.send_daily_newsletter(user.emailadress, content).deliver_now
    end
    redirect_to root_path, notice: 'La newsletter a été envoyée.'
  end
end
