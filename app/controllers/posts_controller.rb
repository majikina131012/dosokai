class PostsController < ApplicationController
  def new
  end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to post_path(post.id)
    else
      render :new
    end
  end

  def index
  end

  def show
    @post= Post.find(params[:id])
  end

  def edit
  end
  
  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title)
  end

end
