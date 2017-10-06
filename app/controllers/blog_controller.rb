class BlogController < ApplicationController
  def new
    #@posta = Course.page(params[:page]).per_page(3)
    #@Course=Course.all
    @Course=Course.page(params[:page]).per_page(2)
  end
  def create

    curso = Course.new(course_params)
    curso.save
    redirect_to :action => 'new' 
  end
  def show
    @Course = Course.find(params[:id])
  end
  def edit
    @curso = Course.find(params[:id]);
    @titulo = @curso.title;
    @descripcion = @curso.description;
    
  end

  def update
    @curso = Course.find(params[:id])
    @curso.update_attributes(course_params)
    redirect_to :action => 'edit' 
    
  end

  def destroy
    @tarea = Course.find(params[:id])
    @tarea.destroy
    redirect_to :action => 'new' 
    
  end

  private

  def course_params
     params.require(:post).permit( :title , :description,:avatar)
  end
end
