require 'test_helper'

class BulletinsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get bulletins_create_url
    assert_response :success
  end

  test "should get edit" do
    get bulletins_edit_url
    assert_response :success
  end

  test "should get delete" do
    get bulletins_delete_url
    assert_response :success
  end

end
