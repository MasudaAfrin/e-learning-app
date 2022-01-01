# rubocop:disable Style/Documentation

class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.references :course, foreign_key: true, null: false
      t.string :title, null: false
      t.string :description
      t.boolean :publish, default: true
      t.timestamps
    end
  end
end
