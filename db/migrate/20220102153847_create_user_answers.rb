class CreateUserAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :user_answers do |t|
      t.references :question, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
      t.string :answer
      t.boolean :is_correct
      t.integer :mark, default: 0
      t.timestamps
    end
  end
end
