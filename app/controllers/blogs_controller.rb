class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    
    respond_to do |format|
      format.html
      format.rss { render :layout => false }
    end
  end

  def show
  end

  def new
  end

  def create
    p "tried to create"
    Blog.new(blog_params).save!

    redirect_to blogs_path
  end

  private

  def blog_params
    {title: params[:title], body: params[:body]}
  end
end