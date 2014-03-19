class KlassesController < ApplicationController
  def index
    @klasses = Klass.all
  end
  
  def new
    @terms = Term.all
    @teachers = Teacher.all
  end
  
  def create
    @klass = Klass.new({
      :term_id => params[:term_id],
      :name => params[:name],
      :teacher_id => params[:teacher_id]
    })
    
    if @klass.save
      redirect_to(:klasses)
    else
      render "new"
    end
  end
  
  def show
    @klass = Klass.find(params[:id])
  end
  
  def edit
    @klass = Klass.find(params[:id])
  end
  
  def update
    @klass = Klass.find(params[:id])
    @klass_edited = Klass.find(params[:id])
    
    @klass_edited.term_id = params[:term_id]
    @klass_edited.name = params[:name]
    @klass_edited.teacher_id = params[:teacher_id]
    
    if @klass_edited.save
      redirect_to(:klasses)
    else
      render "edit"
    end
  end
  
  def delete
    @klass = Klass.find(params[:id])
    
    @klass.delete
    
    redirect_to(:klasses)
  end
end
