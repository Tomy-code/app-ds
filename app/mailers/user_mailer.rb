class UserMailer < ApplicationMailer
  default to: -> { User.pluck(:emailadress) },
  from: 'thomasandrieu1997@gmail.com'

  def send_daily_newsletter(user)
    @user = user
    mail(to: user, subject: 'Votre fait historique quotidien')
  end
end
