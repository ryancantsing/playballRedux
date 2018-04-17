require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get messages_create_url
    assert_response :success
  end

  test "should get new" do
    get messages_new_url
    assert_response :success
  end

  test "should get read" do
    get messages_read_url
    assert_response :success
  end

  test "should get view" do
    get messages_view_url
    assert_response :success
  end

  test "should get delete" do
    get messages_delete_url
    assert_response :success
  end

end
