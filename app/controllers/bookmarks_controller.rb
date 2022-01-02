class BookmarksController < ApplicationController

  def index
    bookmarks =Bookmark.where(user_id: current_user).pluck(:post_id)
    @bookmark_list = Post.find(bookmarks)
  end

  def create
    @post = Post.find(params[:post_id])
    bookmark = current_user.bookmarks.new(post_id: @post.id)
    bookmark.save
  end

  def destroy
    @post = Post.find(params[:post_id])
    bookmark = current_user.bookmarks.find_by(post_id: @post.id)
    bookmark.destroy
  end

end
