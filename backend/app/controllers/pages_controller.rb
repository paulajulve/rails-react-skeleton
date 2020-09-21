class PagesController < ApplicationController
  def index
    render :json => ["figs", "pomegranates", "prunes"]
  end

  def options
    true
  end
end
