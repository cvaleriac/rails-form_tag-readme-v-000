class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    student=Student.new({first_name: params[:first_name], last_name: params[:last_name]})
    student.save
    redirect_to student
  end

end
