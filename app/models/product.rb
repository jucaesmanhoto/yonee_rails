class Product < ApplicationRecord
  belongs_to :store
  
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories

  has_many :cart_products, dependent: :destroy
  has_many :cart, through: :cart_products

  validates :name, :cents, :amount, :store, presence: true
end
