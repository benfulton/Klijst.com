class ApplicationController < ActionController::Base
  # every page has a sidebar which shows available lijsts
  before_filter :load_sidebar

  def load_sidebar
    @lijsts = Lijst.all
  end

  protect_from_forgery
end
