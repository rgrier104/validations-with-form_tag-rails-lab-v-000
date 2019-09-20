class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @updated_post = Post.new(post_params)
    if @updated_post.valid?
      @post = Post.find(params[:id])

      @post.update(post_params)
      
      redirect_to post_path(@post)
    else 
      render :edit
    end
        
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
