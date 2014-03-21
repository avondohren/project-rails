class KlassesController < ApplicationController
  def index
    @klasses = Klass.all
  end
  
  def new
    @klass = Klass.new
    @terms = Term.all
    @teachers = Teacher.all
  end
  
  def create
    @klass_save = Klass.new(params[:klass])
    
    if @klass_save.save
      redirect_to(:klasses)
    else
      @klass = Klass.new
      @terms = Term.all
      @teachers = Teacher.all
      render "new"
    end
  end
  
  def show
    @klass = Klass.find(params[:id])
  end
  
  def edit
    @terms = Term.all
    @klass = Klass.find(params[:id])
    @teachers = Teacher.all
  end
  
  def update
    @klass_save = Klass.find(params[:id])
    
    @klass_save.update_attributes(params[:klass])
    
    if @klass_save.save
      redirect_to(:klasses)
    else
      @klass = Klass.find(params[:id])
      @terms = Term.all
      @teachers = Teacher.all
      render "edit"
    end
  end
  
  def destroy
    @klass = Klass.find(params[:id])
    
    @klass.delete
    
    redirect_to(:klasses)
  end
end
