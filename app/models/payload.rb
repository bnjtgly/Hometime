class Payload < ApplicationRecord
    serialize :payload, JsonbSerializers
    after_create :book_reservation

    private 
    def book_reservation
        payload_guest = Payload.find(id)

        Guest.create(payload_guest.payload['guest'])
        Reservation.create(payload_guest.payload.except(:guest))
    end 
end 
