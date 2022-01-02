class FaveImage < ApplicationRecord
  belongs_to :fave

  attachment :image
end
