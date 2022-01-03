class Lesson < ApplicationRecord
  # Association
  belongs_to :course
  has_many :questions, dependent: :destroy
  has_many :completed_lessons

  accepts_nested_attributes_for :questions, update_only: true, allow_destroy: true

  # Validation
  validates :title, presence: true

  scope :published, -> { where(publish: true) }
end
