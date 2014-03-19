class StudentController < ActionController::Base
  def index
    @students = Student.all
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  def new
    # NO VARIABLE CALLED @article :(
  end
  
  def create
    @student = Student.new({:fname => params[:fname], :lname =< params[:lname]})
    
    if @student.save # If this fails to save, it returns FALSE.
      
      # For successful saves:
      redirect_to(:students)
      
    else
      # Show the errors to the user.
      render "new"
    end
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  def update
    @student = Student.find(params[:id])
    @error = @student.update_attributes({:fname => params[:fname], :lname =< params[:lname]})
    if @error != false
      redirect_to(student_path(@student.id))
    else
      render "edit"
    end
  end
  
  def delete
    @student = Studnet.find(params[:id])
    
    @student.delete
    
    redirect_to(:students)
  end
  
  def name 
    fname + " " + lname
  end

end
