class CreateEnrolledCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :enrolled_courses do |t|
      t.references :user, foreign_key: true, null: false
      t.references :course, foreign_key: true, null: false
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
