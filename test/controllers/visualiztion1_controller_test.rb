require 'test_helper'

class Visualiztion1ControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get visualiztion1_show_url
    assert_response :success
  end

end
