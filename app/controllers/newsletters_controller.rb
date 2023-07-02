class NewslettersController < ApplicationController
  def send_daily
    User.all.each do |user|
      NewsletterMailer.send_daily_newsletter(user.emailadress, "Le contenu de votre newsletter").deliver_now
    end
    redirect_to root_path, notice: 'Newsletter envoyée.'
  end
end
