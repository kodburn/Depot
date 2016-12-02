require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_url
    assert_response :success
  end

  test "should login" do
    user = users(:one)
    post login_url, name: user.name, password: 'Syasysns97'
    assert_redirected_to admin_url
    assert_equal user.id, session[:user_id]
  end

  test "should fail login" do
    user = users(:one)
    post login_url, name: user.name, password: 'wrong'
    assert_redirected_to login_url
  end

  test "should logout" do
    delete logout_url
    assert_redirected_to root_url
  end
end
