class TermController < ApplicationController
  def index
    @terms = Term.all
  end
  
  def new
  end
  
  def create
    name = params[:name]
    @new_term = Term.new({:name => name})
    
    if @new_term.save
      redirect_to("#{term_path(@new_term.id)}")
    else
      render "new"
    end
  end
  
  def show
    @term = Term.find(params[:id])
    # @klasses = Klass.where(:term_id => params[:id])
  end
    
  def edit
    @term = Term.find(params[:id])
  end
  
  def update
    @term = Term.find(params[:id])
    @edit_term = Term.find(params[:id])
    
    @edit_term.name = params[:name]
    
    if @edit_term.save
      redirect_to("#{term_path(@term.id)}")
    else
      render "edit"
    end
  end
  
  def delete
    @term = Term.find(params[:id])
    
    @term.delete
    
    redirect_to(:terms)
  end
end
