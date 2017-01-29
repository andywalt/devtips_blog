class AddUsernameToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :username, :string # add new column to table "users", called "username" and type "string"
  	add_index :users, :username, unique: true #first, index usernamesfor quick lookup, usernames are always unique
  end
end
