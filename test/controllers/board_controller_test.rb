require 'test_helper'

class BoardControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get board_list_url
    assert_response :success
  end

  test "should get display" do
    get board_display_url
    assert_response :success
  end

end
