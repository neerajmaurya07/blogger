class UserMailer < ApplicationMailer
	default from: 'neerajmaurya07@gmail.com'

  def signup_confirmation(user)
    @user = user

    mail to: user.email, subject: "signup confirmation"
  end
end
