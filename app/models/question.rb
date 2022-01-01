# rubocop:disable Style/Documentation

class Question < ApplicationRecord
  enum answer: { optn_one: 0, optn_two: 1, optn_three: 3, optn_four: 4 }

  # Association
  belongs_to :lesson

  # Validation
  validates :qstn, :optn_one, :optn_two, :optn_three, :optn_four, :answer, presence: true
end
