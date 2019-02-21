class CreateQuestionTable < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :poll_id, unique: true, null: false 
      t.text :question
      t.timestamps
    end
  end
end
