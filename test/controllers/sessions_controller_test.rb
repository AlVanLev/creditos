require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get no_test_framework" do
    get :no_test_framework
    assert_response :success
  end

end
