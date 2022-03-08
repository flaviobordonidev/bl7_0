require "test_helper"

class EgUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eg_user = eg_users(:one)
  end

  test "should get index" do
    get eg_users_url
    assert_response :success
  end

  test "should get new" do
    get new_eg_user_url
    assert_response :success
  end

  test "should create eg_user" do
    assert_difference("EgUser.count") do
      post eg_users_url, params: { eg_user: { email: @eg_user.email, encrypted_password: @eg_user.encrypted_password, name: @eg_user.name } }
    end

    assert_redirected_to eg_user_url(EgUser.last)
  end

  test "should show eg_user" do
    get eg_user_url(@eg_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_eg_user_url(@eg_user)
    assert_response :success
  end

  test "should update eg_user" do
    patch eg_user_url(@eg_user), params: { eg_user: { email: @eg_user.email, encrypted_password: @eg_user.encrypted_password, name: @eg_user.name } }
    assert_redirected_to eg_user_url(@eg_user)
  end

  test "should destroy eg_user" do
    assert_difference("EgUser.count", -1) do
      delete eg_user_url(@eg_user)
    end

    assert_redirected_to eg_users_url
  end
end
