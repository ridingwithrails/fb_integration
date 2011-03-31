require 'test_helper'

class FacebookgetControllerTest < ActionController::TestCase
  test "should get testget" do
    get :testget
    assert_response :success
  end

end
