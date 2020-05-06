class City < ApplicationRecord
	has_many :accommodations
	has_many :join_table_user_villes
	has_many :users, through: :join_table_user_villes

	#name city should be mandatory
	validates :name,
		presence: true

	#zip code should be mandatory, unique and a valid french zip code
	validates :zip_code,
		presence: true,
		uniqueness: true,
		format: { with: /\A(([0-8][0-9])|(9[0-5])|(2[ab]))[0-9]{3}\z/, message: "please enter a valid french zip code" }


end

