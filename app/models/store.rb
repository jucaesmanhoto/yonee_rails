class Store < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
