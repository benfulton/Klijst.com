class LijstsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]
  
  # every page has a sidebar which shows available lijsts
  before_filter :load_sidebar

  def index
  end
  
  def load_sidebar
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
	@uls = Userlijst.find(:first, :conditions => ["lijst_id = ? and user_id = ?", @lijst.id, current_user.id])
	if @uls.nil?
  	  @uls = Userlijst.create(:lijst => @lijst, :user => current_user )
        @uls.save!
      end 
      redirect_to :controller => 'userlijsts', :action => 'show', :id => @uls.id
    end
  end

end
