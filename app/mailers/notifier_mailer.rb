class NotifierMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Seja bem-vindo!')
  end
end
