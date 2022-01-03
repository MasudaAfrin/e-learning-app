class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  def self.create_test_answer(answer_params, lesson)
    user_answers = []
    answer_params[:answers].each do |ans|
      qst = Question.find_by(id: ans[:answer][:question_id].to_i)
      next if qst.nil?

      mark = qst.answer.to_s == ans[:answer][:answer] ? 1 : 0
      correct = qst.answer.to_s == ans[:answer][:answer]
      user_answers.push({
                          question_id: qst.id,
                          mark: mark,
                          is_correct: correct,
                          user_id: 1,
                          answer: ans[:answer][:answer]
                        })
    end
    answers = UserAnswer.create!(user_answers)
    lesson.completed_lessons.create!(user_id: 1, total_marks: answers.sum(&:mark))
  end
end
