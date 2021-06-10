class ReservationsController < ApplicationController
    def index
		reservation = Reservation.all
		render json: reservation
	end

	def show
        reservation = Reservation.find(params[:id])
        render json: reservation
        rescue ActiveRecord::RecordNotFound
        head :not_found
    end

    def create
        reservation = Reservation.new(reservation_params)
        if reservation.valid?
            reservation.save
            render json: { reservation: reservation_params}
        else
            render json: { error: 'Failed to create reservation' }, status: :not_acceptable
        end
    end

	def destroy
        reservations = Reservation.all 
        reservation = Reservation.find(params[:id])
        reservation.destroy
        render json: reservations
    end

    def reservation_params
        params.require(:reservation).permit(:start_date, :end_date, guest: [:first_name, :last_name, :phone, :email]).tap do |p| p.merge!(guest_attributes: p.delete(:guest))
        end
    end
end
