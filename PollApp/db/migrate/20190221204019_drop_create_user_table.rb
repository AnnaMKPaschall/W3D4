class DropCreateUserTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :user_tables
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

