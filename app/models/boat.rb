class Boat < ApplicationRecord
		
	 	belongs_to :user
	 	has_many   :bookings, dependent: :destroy
	 	has_many   :jobs, through: :bookings

	 	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

		validates :name,       presence: true
		validates :containers, presence: true
		validates :location,   presence: true

		validates :name, uniqueness: true
		
		validates :location, inclusion: { in: ["ADALV, Andorra la Vella, Andorra", "AEAAN, Al Ain, United Arab Emirates", "AFBAG, Bagram, Afghanistan", "AGANU, Antigua, Antigua and Barbuda", "ATFUR, Fürnitz, Austria", "BEAAB, Aalst, Belgium", "BSWZY, Seaplane Base, Bahamas", "BEFR, Brest, France", "GLAGM, Angmagssalik, Greenland", "NPANP, Annapurna, Nepal"]}
end
