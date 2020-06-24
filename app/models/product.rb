class Product < ApplicationRecord
  belongs_to :store
  has_many :categories
  has_many :cart

  validates :name, :cents, :store, presence: true
end
