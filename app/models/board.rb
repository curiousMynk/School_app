class Board < ApplicationRecord
	has_many :school
validates :name, presence: true
	validates :name, uniqueness: true

end
