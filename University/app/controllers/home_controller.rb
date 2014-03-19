class HomeController < ApplicationController
  def home
    @terms = Term.all
    @klasses = Klass.all
    @teachers = Teacher.all
    @students = Student.all
  end
end