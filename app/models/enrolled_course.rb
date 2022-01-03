class EnrolledCourse < ApplicationRecord
  # Association
  belongs_to :course
  belongs_to :user
end
