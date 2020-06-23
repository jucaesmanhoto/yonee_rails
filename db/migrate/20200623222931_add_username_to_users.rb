class AddUsernameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :document, :string
    add_column :users, :birth_date, :datetime
    add_column :users, :sex, :string
    add_column :users, :role, :string
  end
end
