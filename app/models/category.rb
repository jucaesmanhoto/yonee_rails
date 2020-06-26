class Category < ApplicationRecord
  has_many :product_categories
  has_many :products, through: :product_categories

  has_many :post_categories
  has_many :posts, through: :post_categories

  has_many :user_interests
  has_many :users, through: :user_interests
end
