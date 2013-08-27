require 'test_helper'

class UserFriendshipsControllerTest < ActionController::TestCase
  context "#new" do
  	context "when not logged in" do
  		should "redirected to the login page" do
  			get :new
  			assert_response :redirect
       end
      end
      context "when logged in" do
      	setup do
      		sign_in user(:jason)
      	end
      end
 
      should "should set a flash error if the friend_id param is missing" do
        get :new, {}
        assert_equal "Friend required", flash[:error]
      end
end


end



