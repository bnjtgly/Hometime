class PayloadsController < ApplicationController
	
	def index
		payload = Payload.all
		render json: payload
	end

	def show
		payload = Payload.find(params[:id])
		# result = ParsePayload.new({
		# 			payload_id: payload
		# 		  }).call
        # render json: result
        render json: payload.payload.except(:guest)
        rescue ActiveRecord::RecordNotFound
        head :not_found
	end

	def create
		response = HTTParty.get(payload_params[:endpoint])
		payload = Payload.new(payload: response)
        if payload.valid?
            payload.save
            render json: { payload: payload}
        else
            render json: { error: 'Failed to create reservation' }, status: :not_acceptable
        end
	end

	def destroy
        payloads = Payload.all 
        payload = Payload.find(params[:id])
        payload.destroy
        render json: payloads
    end 

	private
	def payload_params
		
		params.permit(:endpoint)
	end
end
