class Post < ApplicationRecord
  belongs_to :user

  has_many :post_categories
  has_many :categories, through: :post_categories
  
  has_many :reviews

  validates :title, :content, :status, :user, presence: :true
  validates :title, uniqueness: { case_sensitive: false }
  validates :status, inclusion: { in: ["Submitted", "Approved", "Denied", "Deleted"] }
end
