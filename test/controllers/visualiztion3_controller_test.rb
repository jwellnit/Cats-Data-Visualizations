require 'test_helper'

class Visualiztion3ControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get visualiztion3_show_url
    assert_response :success
  end

end
