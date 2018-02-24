# Ninja Mailer
class NinjaMailer < ApplicationMailer
  def update_ninja(ninja)
    @ninja = ninja
    @user = @ninja.user
    mail(to: @user.email, subject: 'Your ninja has been updated !')
  end
end
