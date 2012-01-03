class UserlijstsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_lijst

  def show
  end

  def update
    flash[:notice] = "Lijst has been updated."
    @userlijst.ting_ids = params[:selected_tings] 
    @userlijst.save
    redirect_to @userlijst
  end

  def completed?(t)
    userlijst.tings.include?(t)
  end

  private
    def find_lijst
      @userlijst = Userlijst.find(params[:id])
    end
end
