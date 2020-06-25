class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :sexual_orientation
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :following

  validates :full_name, :username, :birth_date, presence: true
  validates :username, :document, uniqueness: { case_sensitive: false }
  validates :role, inclusion: { in: ["User", "Store"] }
  validates :username, length: { maximum: 20 }

  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end

  def is_following?(user_id)
    relationship = Follow.find_by(follower_id: id, following_id: user_id)
    return true if relationship
  end
end
