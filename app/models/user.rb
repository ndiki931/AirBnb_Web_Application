class User < ApplicationRecord
	has_many :accommodations
	has_many :reservations
	has_many :join_table_user_villes
	has_many :cities, through: :join_table_user_villes

	#user email should be mandatory, unique and valid
	validates :email, 
		presence: true,
		uniqueness: true,
		format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "please enter a valid email address" }

	#user phone number should be mandatory and valid french number 
	validates :phone_number,
		presence: true,
		format: { with: /\A(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})\z/, message: "please enter a valid french number" }
end


