class Api::BlogController < ApplicationController

  def index
    posts =  Course.all 
    render json: posts
  end

  def update
    @tarea = Course.find(params[:id])
    @tarea.update_attributes(course_params)
    @tarea.update(course_params)
    render json: @tarea
  end 

  private

  def course_params
     params.require(:post).permit(:title ,:description,:avatar)
  end
  
end  