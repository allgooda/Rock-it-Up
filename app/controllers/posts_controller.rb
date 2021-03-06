class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    if current_user
      post = Post.new(post_params)
      post.user = current_user
        if post.save
          flash[:notice] = "You have successfully added a new Post"
          redirect_to root_path
        else
          render 'new'
        end
    else
      flash[:notice] = "You GOTTA create an account to do that!"
      redirect_to root_path
    end
  end


  def like
    post = Post.find(params[:id])
    if !post.like_instances.where(user_id:current_user).empty?
      redirect_to post_path
    else
    like = Like.new
    like.user = current_user


    like.post = post
    like.save

    redirect_to post_path
  end
end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])

  respond_to do |format|
    if @post.update(post_params)
      format.html { redirect_to post_path, notice: 'Description Updated'}
    else
      format.html {render :edit}
    end
  end
end


def destroy
 @post = current_user.posts.find(params[:id])
 @post.destroy
 redirect_to profiles_path
end


  private

  def post_params
    params.require(:post).permit(:description, :site_found, :img_uri)
  end
end
