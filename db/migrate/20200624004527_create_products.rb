class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price_in_cents
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
