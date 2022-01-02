require 'test_helper'

class EnrolledCoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get enrolled_courses_create_url
    assert_response :success
  end

end
