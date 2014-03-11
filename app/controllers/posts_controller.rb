class PostsController < ApplicationController

  layout 'fullpage', :only => :videos

  def index
    @posts = Post.published_and_not_hot.page(params[:page]).per(3).order('created_at DESC')
    respond_to :html, :js
  end

  def show
    @post = Post.find(params[:id])

  end

  def videos
  end


  def calendar
    @postzzz = Post.all.order('created_at DESC')
  end

end
