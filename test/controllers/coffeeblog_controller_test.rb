require 'test_helper'

class CoffeeblogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coffeeblog_index_url
    assert_response :success
  end

  test "should get post" do
    get coffeeblog_post_url
    assert_response :success
  end

  test "should get confirm" do
    get coffeeblog_confirm_url
    assert_response :success
  end

  test "should get success" do
    get coffeeblog_success_url
    assert_response :success
  end

end
