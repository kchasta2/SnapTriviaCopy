require 'test_helper'

class GamePageControllerTest < ActionController::TestCase
  test "should get gamepage" do
    get :gamepage
    assert_response :success
  end

end
