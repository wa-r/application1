class BlogsController < ApplicationController
  def show
    @blog = Blog.find(params[:id])
  end

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blog_path(blog.id)
  end

  def edit
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end

end
