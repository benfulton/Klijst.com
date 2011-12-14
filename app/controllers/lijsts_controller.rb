class LijstsController < ApplicationController

  def index
    @lijsts = Lijst.all
  end

  def new
    @lijst = Lijst.new
  end

  def create
    @project = Lijst.new(params[:lijst])
    @project.save
    flash[:notice] = "Lijst has been created."
    redirect_to @project
  end

  def show
    @lijst = Lijst.find(params[:id])
  end

end
