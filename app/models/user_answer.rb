class UserAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  def self.create_test_answer(answer_params)
    answer_params.each do
      qstn = Question.find_by(id: answer_params[])
    end
  end
end
