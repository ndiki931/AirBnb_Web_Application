class JoinTableUserVille < ApplicationRecord
	belongs_to :user 
	belongs_to :city
end
