require "test_helper"

class MockupsControllerTest < ActionDispatch::IntegrationTest
  test "should get page_a" do
    get mockups_page_a_url
    assert_response :success
  end

  test "should get page_b" do
    get mockups_page_b_url
    assert_response :success
  end
end
