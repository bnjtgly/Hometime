class ParsePayload
  
  def initialize(params)
    @params = params[:payload_id]
  end

  def call
    # Payload.find(@params).payload['adults'][0]['first_name']
    @params.payload['guest']
  end

end