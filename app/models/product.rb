class Product < ApplicationRecord
  belongs_to :store
  has_many :categories, through: :product_categories
  has_many :cart, through: :cart_products

  validates :name, :cents, :amount, :store, presence: true
end
