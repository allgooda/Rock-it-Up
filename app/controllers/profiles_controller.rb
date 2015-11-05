class ProfilesController < ApplicationController

  def index
    @posts = Post.all

    @likes = Like.where(user_id:current_user.id)
    @post_ids = []

    @likes.each do |like|
      @post_ids << like.post_id
    end

  end

end

