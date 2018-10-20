class UserMailer < ApplicationMailer
  default from: 'example@gmail.com'

  def new_task(user)
    @user = user
    mail to: @user.email, subject: "Hey! What's up!  #{@user.name}" 
  end


end
