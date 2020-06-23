class CreateSexualOrientations < ActiveRecord::Migration[6.0]
  def change
    create_table :sexual_orientations do |t|
      t.string :orientation

      t.timestamps
    end
  end
end
