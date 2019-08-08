module ApplicationHelper

	def checkUserAdmin
		user_signed_in? ? current_user.admin? : false		
	end


end
