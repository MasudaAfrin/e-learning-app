class EnrolledCoursesController < ApplicationController
  def create
    course = Course.find(params[:course_id])
    enrol = EnrolledCourse.new(course_id: params[:course_id],
                               user_id: 1)
    respond_to do |format|
      if enrol.save
        format.html { redirect_to course_details_url(slug: course.slug), notice: 'Successfully enrolled' }
      else
        format.html { render json: 'Not able to enroll', status: :unprocessable_entity }
      end
    end
  end

  private

  def enrolled_params
    params.require(:course).permit(:course_id)
  end
end
