require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get games_create_url
    assert_response :success
  end

  test "should get update" do
    get games_update_url
    assert_response :success
  end

  test "should get home_confirm" do
    get games_home_confirm_url
    assert_response :success
  end

  test "should get away_confirm" do
    get games_away_confirm_url
    assert_response :success
  end

  test "should get newgame" do
    get games_newgame_url
    assert_response :success
  end

  test "should get edit" do
    get games_edit_url
    assert_response :success
  end

  test "should get delete" do
    get games_delete_url
    assert_response :success
  end

  test "should get view" do
    get games_view_url
    assert_response :success
  end

end
