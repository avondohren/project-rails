class TermsController < ApplicationController
  def index
    @terms = Term.all
  end
  
  def new
    @term = Term.new()
  end
  
  def create
    @new_term = Term.new(params[:term])
    
    if @new_term.save
      redirect_to("#{term_path(@new_term.id)}")
    else
      @term = Term.new()
      render "new"
    end
  end
  
  def show
    @term = Term.find(params[:id])
    @klasses = @term.klasses
  end
    
  def edit
    @term = Term.find(params[:id])
  end
  
  def update
    @term = Term.find(params[:term][:id])
    @new_term = Term.find(params[:term][:id])
    
    @new_term.name = params[:term][:name]
    
    if @new_term.save
      redirect_to("#{term_path(@term.id)}")
    else
      render "edit"
    end
  end
  
  def destroy
    @term = Term.find(params[:id])
    
    @term.delete
    
    redirect_to(:terms)
  end
end
