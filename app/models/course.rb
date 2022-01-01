# rubocop:disable Style/Documentation

class Course < ApplicationRecord
  # Association
  has_many :lessons, dependent: :destroy
  has_many :questions, through: :lessons

  # Validation
  validates :title, :subject, presence: true
  validates :slug, presence: true, uniqueness: true

  # scope
  scope :published, -> { where(publish: true) }

  # callback
  before_validation :generate_slug

  private

  def generate_slug
    self.slug = title.parameterize if new_record? || title_changed?
  end
end
