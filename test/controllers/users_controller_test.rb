require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { full_name: @user.full_name, num_badges: @user.num_badges, num_points: @user.num_points, profile_pic_link: @user.profile_pic_link, username_link_to_profile_page: @user.username_link_to_profile_page }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { full_name: @user.full_name, num_badges: @user.num_badges, num_points: @user.num_points, profile_pic_link: @user.profile_pic_link, username_link_to_profile_page: @user.username_link_to_profile_page }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
