class MapsController < ApplicationController

  def index
    @latlng = nil;

    render :index
    #binding.pry
    
  end

end
