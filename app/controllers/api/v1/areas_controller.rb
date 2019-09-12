module Api
  module V1
    class AreasController < ApplicationController
      def index
        render json: AREAS_LIST
      end
    end
  end
end
