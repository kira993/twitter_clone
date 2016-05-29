class AddFirstNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string #Adds new column "first_name" in table users,
    add_index :users, :first_name, unique: false
  end
end
