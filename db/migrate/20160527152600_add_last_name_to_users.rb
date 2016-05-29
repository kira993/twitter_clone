class AddLastNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string #Adds new column "last_name" in table users,
    add_index :users, :last_name, unique: false
  end
end
