class MapsController < ApplicationController

  def show
    @map = Map.find(params[:map_id])
    @location = @map.locations.find(params[:id])
  end

end
