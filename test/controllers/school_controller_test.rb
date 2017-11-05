require 'test_helper'

class SchoolControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get school_index_url
    assert_response :success
  end

  test "should get show" do
    get school_show_url
    assert_response :success
  end

end
