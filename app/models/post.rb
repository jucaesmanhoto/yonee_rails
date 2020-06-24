class Post < ApplicationRecord
  belongs_to :user
  validates :title, :content, :status, presence: :true
  validates :title, uniqueness: { case_sensitive: false }
  validates :status, inclusion: { in: ["Submitted", "Approved", "Denied", "Deleted"] }
end
