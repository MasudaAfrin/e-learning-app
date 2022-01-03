# rubocop:disable Style/Documentation

class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title, null: false
      t.string :slug, null: false
      t.text :description
      t.string :subject
      t.boolean :publish, default: true
      t.timestamps
    end
  end
end
