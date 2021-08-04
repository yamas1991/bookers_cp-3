class Book < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :book_comments, dependent: :destroy
  
  def liked_by?(user_id)
    likes.where(user_id: user_id).exists?
  end
  
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200}
end
