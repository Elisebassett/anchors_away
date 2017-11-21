class Job < ApplicationRecord

	belongs_to :user
	has_many 	 :bookings
	has_many 	 :boats, through: :bookings

	validates :title,    		presence: true
  validates :description, presence: true
  validates :containers,  presence: true
  validates :origin,      presence: true
  validates :destination, presence: true

end
