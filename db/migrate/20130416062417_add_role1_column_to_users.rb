class AddRole1ColumnToUsers < ActiveRecord::Migration
  def up
    add_column :users, :role1, :string
  end
  def down
    remove_column :users, :role1, :string
  end
  
end
