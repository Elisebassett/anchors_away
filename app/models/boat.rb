class Boat < ApplicationRecord
		
	 	belongs_to :user

		validates :name,       presence: true
		validates :containers, presence: true
		validates :location,   presence: true
end
