class Booking < ApplicationRecord
	belongs_to :boat
	belongs_to :job
end
