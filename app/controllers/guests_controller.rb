class GuestsController < ApplicationController
    def index
		guest = Guest.all
		render json: guest
	end

	def show
        guest = Guest.find(params[:id])
        render json: guest
        rescue ActiveRecord::RecordNotFound
        head :not_found        
    end

	def destroy
        guests = Guest.all 
        guest = Guest.find(params[:id])
        guest.destroy
        render json: guests
    end
end
