require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @user= users(:kamiiyu)
    @post = posts(:one)
    #sign_in @user 
  end

  test "should get index" do
    get :index, :user_id => 1
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    sign_in @user
    get :new, user_id: @user
    assert_response :success
  end

  test "should create post" do
    sign_in @user
    assert_difference('Post.count') do
      post :create, {post: { body: @post.body, published: @post.published, title: @post.title, user_id: @post.user_id }, :user_id => 1}
    end

    assert_redirected_to user_post_path(assigns(:user), assigns(:post))
  end

  test "should show post" do
    get :show, {id: @post, user_id: @user}
    assert_response :success
  end

  test "should get edit" do
    sign_in @user
    get :edit, {id: @post, user_id: @user}
    assert_response :success
  end

  test "should update post" do
    sign_in @user
    patch :update, id: @post, user_id: @user, post: { body: @post.body, published: @post.published, title: @post.title, user_id: @post.user_id }
    assert_redirected_to user_post_path(assigns(:user), assigns(:post))
  end

  test "should destroy post" do
    sign_in @user
    assert_difference('Post.count', -1) do
      delete :destroy, {id: @post, user_id: @user}
    end

    assert_redirected_to user_posts_path(assigns(:user))
  end
end
