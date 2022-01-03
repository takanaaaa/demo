class FavoriteImage < ApplicationRecord
  belongs_to :user
  belongs_to :fave_image
end
