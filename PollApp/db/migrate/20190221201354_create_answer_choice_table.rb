class CreateAnswerChoiceTable < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.integer :question_id, unique: true, null: false
      t.integer :user_id, null: false
      t.text :answer_choice, null: false  
      t.timestamps 

    end

    add_index :answer_choices, [:answer_choice, :question_id], unique: true
  end
end


#add index to the answer_choices table, indexing answer_choice to question_id, making it unique