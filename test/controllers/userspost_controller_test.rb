require 'test_helper'

class UserspostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get userspost_index_url
    assert_response :success
  end

end
