class AddBirthYearToUsers < ActiveRecord::Migration
  def change
    add_column :users, :birth_year, :integer #Adds new column "first_name" in table users,
    add_index :users, :birth_year, unique: false
  end
end
