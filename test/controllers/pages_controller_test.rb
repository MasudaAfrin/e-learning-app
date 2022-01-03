require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get course_details" do
    get pages_course_details_url
    assert_response :success
  end

end
