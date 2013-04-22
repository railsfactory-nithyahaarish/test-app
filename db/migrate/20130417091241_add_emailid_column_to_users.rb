class AddEmailidColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Email_id, :string
    
  end
end
