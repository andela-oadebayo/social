require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "redirects anonymous users to login" do
    get :index
    assert_redirceted_to_login_url
  end

  test "get index for authenticated users" do
    user1 = users(:user1)

    get :index, {}, {user_id: user1.id}
    assert_response :success
  end
end
