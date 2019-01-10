class NewUserEmail < ApplicationMailer
	def notify_user(user)
		@user = user
		mail(to: @user.email, subject: "New Elective")
	end
end
