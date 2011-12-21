class TingsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show]
  before_filter :find_lijst
  before_filter :find_ting, :only => [:show, :edit, :update, :destroy]

  def new
    @ting = @lijst.tings.build
  end

  def create
    @ting = @lijst.tings.build(params[:ting])
    if @ting.save
      flash[:notice] = "Ting has been created."
      redirect_to [@lijst]
    else
      flash[:alert] = "Ting has not been created."
      render :action => "new"
    end
  end

  def find_ting
    @ting = @lijst.tings.find(params[:id])
  end

  def show
  end

  private
    def find_lijst
      @lijst = Lijst.find(params[:lijst_id])
    end

end
