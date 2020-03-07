class SightingsController < ApplicationController

    def show
        # sighting = Sighting.find_by(id: params[:id])
        sightings = Sighting.all
        # render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
        render json: sightings, include: [:bird, :location], except: [:updated_at, :created_at]
    end

end
