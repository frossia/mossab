class PostsController < ApplicationController

  layout 'fullpage', :only => :videos

  def index
    @posts = Post.page(params[:page]).per(3)
    respond_to :html, :js
  end

  def show
    @post = Post.find(params[:id])

  end

  def videos
    @videos = Post.videos
  end

end
