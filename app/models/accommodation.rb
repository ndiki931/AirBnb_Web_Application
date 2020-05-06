class Accommodation < ApplicationRecord
	belongs_to :user
	belongs_to :city
	has_many :reservations

	#available beds data should be mandatory and strictly positive integer
	validates :available_beds,
		presence: true,
		numericality: { only_integer: true, greater_than: 0, message: "please enter a number greater than 0" }

	#price accommodation should be mandatory and strictly positive integer
	validates :price,
		presence: true,
		numericality: { only_integer: true, greater_than: 0, message: "please enter a price greater than 0" }

	#description accommodation should be mandatory and has at least 140 caracters
	validates :description,
		presence: true,
		length: { minimum: 140, message: "please the text should contain 140 caracters at least"}

	#welcome message should be mandatory
	validates :welcome_message,
		presence: true

	#it's not possible to book an accommodation when this one is already booked
	#validate :overlaping_reservation?(self.reservations,:end_date)
	#def overlaping_reservation?(arrival,departure)
		#self.reservations.present?(:end_date < arrival && :start_date > departure)
	#end

end










