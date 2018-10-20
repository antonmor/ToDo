class UserMailer < ApplicationMailer
  default from: 'ingantonmor@gmail.com'

  def new_task(user)
    @user = user
    mail to: @user.email, subject: "Hey! What's up!  #{@user.name}" 
  end


end
