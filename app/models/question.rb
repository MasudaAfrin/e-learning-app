# rubocop:disable Style/Documentation

class Question < ApplicationRecord
  enum answer: { option_one: 0, option_two: 1, option_three: 2, option_four: 3 }

  # Association
  belongs_to :lesson
  has_many :user_answers

  # Validation
  validates :qstn, :optn_one, :optn_two, :optn_three, :optn_four, :answer, presence: true
end
