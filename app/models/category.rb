class Category < ApplicationRecord
  has_many :product_categories, dependent: :destroy
  has_many :products, through: :product_categories

  has_many :post_categories, dependent: :destroy
  has_many :posts, through: :post_categories

  has_many :user_interests, dependent: :destroy
  has_many :users, through: :user_interests
end
