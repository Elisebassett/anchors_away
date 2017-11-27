class Job < ApplicationRecord

	belongs_to :user
	has_many 	 :bookings, dependent: :destroy
	has_many 	 :boats, through: :bookings

	validates :title,    		presence: true
  validates :description, presence: true
  validates :containers,  presence: true
  validates :origin,      presence: true
  validates :destination, presence: true

  validates :title, uniqueness: true
  
  validates :description, length: { minimum: 50 }

  validates :cost, numericality: { greater_than: 1000 }

  validates :origin, inclusion: { in: ["ADALV, Andorra la Vella, Andorra", "AEAAN, Al Ain, United Arab Emirates", "AFBAG, Bagram, Afghanistan", "AGANU, Antigua, Antigua and Barbuda", "ATFUR, Fürnitz, Austria", "BEAAB, Aalst, Belgium", "BSWZY, Seaplane Base, Bahamas", "BEFR, Brest, France", "GLAGM, Angmagssalik, Greenland", "NPANP, Annapurna, Nepal"]}

  validates :destination, inclusion: { in: ["ADALV, Andorra la Vella, Andorra", "AEAAN, Al Ain, United Arab Emirates", "AFBAG, Bagram, Afghanistan", "AGANU, Antigua, Antigua and Barbuda", "ATFUR, Fürnitz, Austria", "BEAAB, Aalst, Belgium", "BSWZY, Seaplane Base, Bahamas", "BEFR, Brest, France", "GLAGM, Angmagssalik, Greenland", "NPANP, Annapurna, Nepal"]}

  def containers_left
   container_count = 0

   self.bookings.each do |booking|
     container_count = booking.boat.containers + container_count
   end

   containers_left = self.containers - container_count

  end

end
