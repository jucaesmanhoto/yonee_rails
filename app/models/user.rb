class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :sexual_orientation
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :full_name, :username, :birth_date, presence: true
  validates :username, :document, uniqueness: { case_sensitive: false }
  validates :role, inclusion: { in: ["User", "Store"] }
  validates :username, length: { maximum: 20 }
end
