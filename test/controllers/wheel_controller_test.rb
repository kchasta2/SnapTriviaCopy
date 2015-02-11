require 'test_helper'

class WheelControllerTest < ActionController::TestCase
  test "should get wheel" do
    get :wheel
    assert_response :success
  end

end
