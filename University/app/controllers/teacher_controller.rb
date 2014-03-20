class TeacherController < ApplicationController
  def index
    @teachers = Teacher.all
  end
  
  def show
    @teacher = Teacher.find(params[:id])
    @klasses = @teacher.klasses
  end
  
  def new
    # NO VARIABLE CALLED @article :(
  end
  
  def create
    @teacher = Teacher.new({:fname => params[:fname], :lname => params[:lname]})
    
    if @teacher.save # If this fails to save, it returns FALSE.
      
      # For successful saves:
      redirect_to(:teachers)
      
    else
      # Show the errors to the user.
      render "new"
    end
  end
  
  def edit
    @teacher = Teacher.find(params[:id])
  end
  
  def update
    @teacher = Teacher.find(params[:id])
    @edit_teacher = Teacher.find(params[:id])
    @edit_teacher.fname = params[:fname]
    @edit_teacher.lname = params[:lname]
    if @edit_teacher.save # If this fails to save, it returns FALSE.
      # For successful saves:
      redirect_to(teacher_path(@edit_teacher.id))
    else
      # Show the errors to the user.
      render "edit"
    end
  end
  
  def delete
    @teacher = Teacher.find(params[:id])
    
    @teacher.delete
    
    redirect_to(:teachers)
  end
  
end
