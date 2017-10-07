class ThemeController < ApplicationController
  def new
    @algo = @course
  end
  def create
  end
  def show
  end
  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private
  def comment_params
    params.require(:theme).permit( :title ) 
  end

  def load_course
   @course = Course.find(params[:course_id])
  end
end
