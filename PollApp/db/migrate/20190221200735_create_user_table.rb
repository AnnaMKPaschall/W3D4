class CreateUserTable < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tables do |t|
      t.string :user_name, null: false, unique: true, index: true
      t.timestamps
    end
  end
end
