require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get teams_create_url
    assert_response :success
  end

  test "should get new" do
    get teams_new_url
    assert_response :success
  end

  test "should get update" do
    get teams_update_url
    assert_response :success
  end

  test "should get edit" do
    get teams_edit_url
    assert_response :success
  end

  test "should get view" do
    get teams_view_url
    assert_response :success
  end

end
