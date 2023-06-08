require "test_helper"

class DetectionControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get detection_Home_url
    assert_response :success
  end
end
