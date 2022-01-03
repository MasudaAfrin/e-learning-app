class TestsController < ApplicationController
  def test
    @lesson = Lesson.find_by(id: params[:id])
  end

  def create
    lesson = Lesson.find_by(id: test_params[:lesson_id])
    UserAnswer.create_test_answer(test_params, lesson)
    respond_to do |format|
      format.html { redirect_to course_details_url(slug: lesson.course.slug), notice: 'Successfully submited' }
    end
  end

  private

  def test_params
    params.require(:answers).permit(:lesson_id,
                                    answers: [
                                      answer: %i[question_id answer]
                                    ])
  end
end
