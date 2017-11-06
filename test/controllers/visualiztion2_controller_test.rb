require 'test_helper'

class Visualiztion2ControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get visualiztion2_show_url
    assert_response :success
  end

end
