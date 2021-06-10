class Guest < ApplicationRecord
	validates_presence_of :email
	has_many :reservations
end
