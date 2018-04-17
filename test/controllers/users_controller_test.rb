require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get dashboard" do
    get users_dashboard_url
    assert_response :success
  end

  test "should get create" do
    get users_create_url
    assert_response :success
  end

  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_update_url
    assert_response :success
  end

  test "should get login" do
    get users_login_url
    assert_response :success
  end

  test "should get logout" do
    get users_logout_url
    assert_response :success
  end

  test "should get user_params" do
    get users_user_params_url
    assert_response :success
  end

  test "should get on_team" do
    get users_on_team_url
    assert_response :success
  end

end
