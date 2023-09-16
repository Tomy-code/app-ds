# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def send_daily_newsletter
    user = User.last # Ou tout autre utilisateur de votre choix pour la prévisualisation
    UserMailer.send_daily_newsletter(user)
  end

end
