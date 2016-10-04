class AddUserDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :Phonenumber, :integer
    add_column :users, :address, :text
    add_column :users, :gender, :boolean
  end
end
