class Lesson < ApplicationRecord
  # Association
  belongs_to :course
  has_many :questions, dependent: :destroy

  accepts_nested_attributes_for :questions, update_only: true, allow_destroy: true

  # Validation
  validates :title, presence: true
end
