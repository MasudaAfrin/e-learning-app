class TestsController < ApplicationController
  def test
    @lesson = Lesson.find_by(id: params[:id])
  end

  def create
    # answers = UserAnswer.create_test_answer(params[:test_params])
    p params[:test_params]
  end

  private

  def test_params
    params.fetch(:test_params, {}).permit(:lesson_id,
                                          answers: [
                                            answer: %i[question_id answer]
                                          ])
  end
end
