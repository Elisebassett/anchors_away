class Boat < ApplicationRecord
		
	 	belongs_to :user
	 	has_many   :bookings
	 	has_many   :jobs, through: :bookings

		validates :name,       presence: true
		validates :containers, presence: true
		validates :location,   presence: true
end
