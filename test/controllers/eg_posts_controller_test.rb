require "test_helper"

class EgPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eg_post = eg_posts(:one)
  end

  test "should get index" do
    get eg_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_eg_post_url
    assert_response :success
  end

  test "should create eg_post" do
    assert_difference("EgPost.count") do
      post eg_posts_url, params: { eg_post: { headline: @eg_post.headline, incipit: @eg_post.incipit, meta_description: @eg_post.meta_description, meta_title: @eg_post.meta_title, user_id: @eg_post.user_id } }
    end

    assert_redirected_to eg_post_url(EgPost.last)
  end

  test "should show eg_post" do
    get eg_post_url(@eg_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_eg_post_url(@eg_post)
    assert_response :success
  end

  test "should update eg_post" do
    patch eg_post_url(@eg_post), params: { eg_post: { headline: @eg_post.headline, incipit: @eg_post.incipit, meta_description: @eg_post.meta_description, meta_title: @eg_post.meta_title, user_id: @eg_post.user_id } }
    assert_redirected_to eg_post_url(@eg_post)
  end

  test "should destroy eg_post" do
    assert_difference("EgPost.count", -1) do
      delete eg_post_url(@eg_post)
    end

    assert_redirected_to eg_posts_url
  end
end
