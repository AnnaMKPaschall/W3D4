class CreateResponseTable < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :answer_choice_id, null: false
      t.integer :user_id, null: false 
    end
    add_index :responses, [:answer_choice_id, :user_id], unique: true
    #unique true applies to answer choice, now indexable because we don't want multiple occasions of user responding to poll
  end
end
