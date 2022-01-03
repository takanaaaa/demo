class HomesController < ApplicationController
  def top
    fave_top = Fave.includes(:favorited_users).sort{|a,b|
      b.favorited_users.size <=> a.favorited_users.size
    }
    @fava_top_images = fave_top.first(5)
  end
end
