class Post < ApplicationRecord
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  validates :body, presence: true

  attachment :image

  def bookmark_by?(user)
    bookmarks.where(user_id: user.id).exists?
  end
end
