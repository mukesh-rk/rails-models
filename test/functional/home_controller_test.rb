require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get init" do
    get :init
    assert_response :success
  end

end
