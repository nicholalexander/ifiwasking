class MapsController < ApplicationController

  def index
    @latlng = nil;
    render :index
  end

  def test
    render :maps
  end

  def show

    @proclamations = Proclamation.all

    @hash = Gmaps4rails.build_markers(@proclamations) do |proclamation, marker|
        marker.lat proclamation.latitude.to_f
        marker.lng proclamation.longitude.to_f
    end
        
    render :show
  end


end
