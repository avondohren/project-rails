class EnrollController < ApplicationController
  def new
    @klasses = Klass.all
    @students = Student.all
  end
  
  def create
    @student = Student.find(params[student_id])
    @klass = Klass.find(params[klass_id])
    
    @klass.students << @student
    
    redirect_to(klass_path(@klass.id))
  end
end