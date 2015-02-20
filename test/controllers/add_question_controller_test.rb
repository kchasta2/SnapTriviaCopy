require 'test_helper'

class AddQuestionControllerTest < ActionController::TestCase
  test "should get addQuestion" do
    get :addQuestion
    assert_response :success
  end

end
