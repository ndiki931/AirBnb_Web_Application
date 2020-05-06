class Reservation < ApplicationRecord
	belongs_to :user
	belongs_to :accommodation

	#it's impossible that end date reservation be before than start date reservation
	validate :start_must_be_before_end_date
	def start_must_be_before_end_date
    errors.add(self.start_date, "must be before end date") unless
        self.start_date < self.end_date
	end 

	#calcul reservation duration of the user
	def reservation_duration_in_days
		if self.start_must_be_before_end_date
			return (self.end_date.to_i - self.start_date.to_i) / 86400
		end
	end

	# check if reservation date available before creating one
	#validate :accommodation.overlaping_reservation?(:start_date,:end_date)

	before_create :check_date_availability 
	def check_date_availability
  		reservations = Reservation.where('start_date < ? OR end_date > ?', self.start_date, self.end_date)
  		return reservations.empty?
	end
end





