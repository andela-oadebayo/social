require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should get new with new user" do
    get :new
    user = assigns(:user)
    assert user.new_record?
    assert_response :success
  end

  test "should create user" do
    params = { 
      user: {
        email: "user@example.com",
        password: "password",
        password_confirmation: "password"
      }
    }
    post :create, params 
    assert_redirected_to root_url 
  end
end

