class Category < ApplicationRecord
  has_many :products, through: :product_categories
  has_many :posts, through: :post_categories
end
