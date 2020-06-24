class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.interger :rate
      t.text :content
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
