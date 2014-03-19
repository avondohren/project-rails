class StudentController < ActionController::Base
  def list
    @students = Student.all
  end
  
  def name 
    fname + " " + lname
  end
end
