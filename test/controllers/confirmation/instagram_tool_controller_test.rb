require 'test_helper'

class Confirmation::InstagramToolControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get confirmation_instagram_tool_show_url
    assert_response :success
  end

end
