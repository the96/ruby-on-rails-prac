require 'test_helper'

class MemberControllerTest < ActionDispatch::IntegrationTest
  test "should get zerlock" do
    get member_zerlock_url
    assert_response :success
  end
  test "should get list" do
    get member_list_url
    assert_response :success
  end
end
