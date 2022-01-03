class CreateCompletedLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :completed_lessons do |t|
      t.references :lesson, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
      t.integer :total_marks, default: 0
      t.timestamps
    end
  end
end
