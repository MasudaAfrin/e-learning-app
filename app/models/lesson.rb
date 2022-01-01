class Lesson < ApplicationRecord
  # Association
  belongs_to :course
  has_many :questions, dependent: :destroy

  # Validation
  validates :title, presence: true
end
