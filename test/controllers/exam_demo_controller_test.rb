require 'test_helper'

class ExamDemoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exam_demo_index_url
    assert_response :success
  end

end
