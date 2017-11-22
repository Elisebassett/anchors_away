class Boat < ApplicationRecord
		
	 	belongs_to :user
	 	has_many   :bookings
	 	has_many   :jobs, through: :bookings

		validates :name,       presence: true
		validates :containers, presence: true
		validates :location,   presence: true

		validates :location, inclusion: { in: ["ADALV, Andorra la Vella, Andorra", "AEAAN, Al Ain, United Arab Emirates", "AFBAG, Bagram, Afghanistan", "AGANU, Antigua, Antigua and Barbuda", "ATFUR, Fürnitz, Austria", "BEAAB, Aalst, Belgium", "BSWZY, Seaplane Base, Bahamas", "BEFR, Brest, France", "GLAGM, Angmagssalik, Greenland", "NPANP, Annapurna, Nepal"]}
end
