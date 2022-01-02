class Fave < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :fave_images, dependent: :destroy

  attachment :image

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
