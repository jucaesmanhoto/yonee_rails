class Product < ApplicationRecord
  belongs_to :store
  has_many :categories
  validates :name, :cents, :store, presence: true
end
