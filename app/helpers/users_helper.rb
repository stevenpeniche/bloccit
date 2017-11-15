module UsersHelper
	def user_has_any_post?
		current_user.posts.count > 0
	end

	def user_has_any_comments?
		current_user.comments.count > 0
	end

	def user_has_any_favorites?
		current_user.favorites.count > 0
	end
end
