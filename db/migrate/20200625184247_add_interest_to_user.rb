class AddInterestToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :interest, :string, array: true, default: []
  end
end
