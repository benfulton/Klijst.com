class LijstsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

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
    if user_signed_in?
      render :action => 'show_checkable'
    end
  end

  def show_checkable
    @lijst = Lijst.find(params[:id])
  end
end
