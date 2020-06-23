class AddSexualOrientationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :sexual_orientation, null: false, foreign_key: true
  end
end
