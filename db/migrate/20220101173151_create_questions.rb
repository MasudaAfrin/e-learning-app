class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :lesson, foreign_key: true, null: false
      t.string :qstn, null: false
      t.string :optn_one, null: false
      t.string :optn_two, null: false
      t.string :optn_three, null: false
      t.string :optn_four, null: false
      t.integer :answer
      t.timestamps
    end
  end
end
