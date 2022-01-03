class FaveImage < ApplicationRecord
  belongs_to :fave
  has_many :favorite_images, dependent: :destroy
  has_many :image_favorited_users, through: :favorite_images, source: :user

  attachment :image

  def image_favorited_by?(user)
    favorite_images.where(user_id: user.id).exists?
  end
end
