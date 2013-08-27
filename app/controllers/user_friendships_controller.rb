class UserFriendshipsController < ApplicationController
	before_filter :authenticate_user!, only: [:new]

	def new
		unless params [:friend_id]
			flash[:error] = "Friend required"
		end


	end
end
