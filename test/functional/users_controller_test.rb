require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get regs" do
    get :regs
    assert_response :success
  end

end
