class MapsController < ApplicationController

  def index
    @latlng = nil;
    render :index
  end

  def test
    render :maps
  end


end
