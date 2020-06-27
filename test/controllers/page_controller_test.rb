require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get root_path
    assert_response :success
  end

  test "should get play" do
    get play_url
    assert_response :success
  end

  test "should get result" do
    get result_url
    assert_response :success
  end

end
