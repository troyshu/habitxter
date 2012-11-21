module UserSessionsHelper

    def current_user
    	current_user_session = UserSession.find
    	id = current_user && current_user.record.id
		@current_user ||= User.find_by_id(id)
	end

	def current_user?(user)
		user == current_user
	end
end

