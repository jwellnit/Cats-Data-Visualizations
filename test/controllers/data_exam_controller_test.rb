require 'test_helper'

class DataExamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get data_exam_index_url
    assert_response :success
  end

  test "should get show" do
    get data_exam_show_url
    assert_response :success
  end

end
