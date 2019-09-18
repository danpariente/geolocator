module Api
  module V1
    class LocationsController < ApplicationController
      def create
        location = Location.new(location_params)

        if location.valid?
          GeocodeJob.perform_later(location_params)
          render json: serializer(location), status: :created
        else
          render json: errors(location), status: :unprocessable_entity
        end
      end

      private

      def serializer(location)
        LocationSerializer.new(location).serialized_json
      end

      def errors(location)
        {
          errors: {
            title: "UnprocessableEntity",
            detail: location.errors.full_messages.join(", ")
          }
        }
      end

      def location_params
        params.require(:location).permit(:id, :name, :lonlat)
      end
    end
  end
end
