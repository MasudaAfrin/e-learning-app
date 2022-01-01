# rubocop:disable Style/Documentation

class Course < ApplicationRecord
  # Validation
  validates :title, :subject, presence: true
  validates :slug, presence: true, uniqueness: true

  # callback
  before_validation :generate_slug

  private

  def generate_slug
    self.slug = title.parameterize if new_record? || title_changed?
  end
end
