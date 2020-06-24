class Store < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  validates :name, :user, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
