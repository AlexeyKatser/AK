require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get requests_show_url
    assert_response :success
  end

  test "should get edit" do
    get requests_edit_url
    assert_response :success
  end

end
