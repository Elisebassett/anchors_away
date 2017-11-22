class Job < ApplicationRecord

	belongs_to :user
	has_many 	 :bookings
	has_many 	 :boats, through: :bookings

	validates :title,    		presence: true
  validates :description, presence: true
  validates :containers,  presence: true
  validates :origin,      presence: true
  validates :destination, presence: true
  validates :, presence: true

  validates :origin, inclusion: { in: ["ADALV, Andorra la Vella, Andorra", "AEAAN, Al Ain, United Arab Emirates", "AFBAG, Bagram, Afghanistan", "AGANU, Antigua, Antigua and Barbuda", "ATFUR, Fürnitz, Austria", "BEAAB, Aalst, Belgium", "BSWZY, Seaplane Base, Bahamas", "BEFR, Brest, France", "GLAGM, Angmagssalik, Greenland", "NPANP, Annapurna, Nepal"]}

  validates :destination, inclusion: { in: ["ADALV, Andorra la Vella, Andorra", "AEAAN, Al Ain, United Arab Emirates", "AFBAG, Bagram, Afghanistan", "AGANU, Antigua, Antigua and Barbuda", "ATFUR, Fürnitz, Austria", "BEAAB, Aalst, Belgium", "BSWZY, Seaplane Base, Bahamas", "BEFR, Brest, France", "GLAGM, Angmagssalik, Greenland", "NPANP, Annapurna, Nepal"]}


end
