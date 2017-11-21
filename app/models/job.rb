class Job < ApplicationRecord

	belongs_to :user

	validates :title,    		presence: true
  validates :description, presence: true
  validates :containers,  presence: true
  validates :origin,      presence: true
  validates :destination, presence: true

end
