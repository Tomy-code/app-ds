# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

def send_daily_newsletter
  UserMailer.send_daily_newsletter()
end

end
