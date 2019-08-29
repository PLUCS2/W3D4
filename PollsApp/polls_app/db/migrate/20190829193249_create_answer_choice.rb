class CreateAnswerChoice < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.integer :question_id, null: false
      t.integer :user_id, null: false
      t.string :answer, null: false
      t.timestamps

    end
  end
end
