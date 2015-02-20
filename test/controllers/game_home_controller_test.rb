require 'test_helper'

class GameHomeControllerTest < ActionController::TestCase
  test "should get gameHome" do
    get :gameHome
    assert_response :success
  end

end
