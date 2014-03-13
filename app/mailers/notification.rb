class Notification < ActionMailer::Base
  default from: "registration@ssdcafe.org"

  def send_confirmation_email(user)
  	@user = user
  	mail to: user.email,
  	     subject: 'Confirmation Instruction'
  end
end
