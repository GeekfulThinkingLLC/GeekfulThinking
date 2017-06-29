class Consultation < ApplicationRecord
	validates_presence_of :name, :email, :phone_number, :description
	# validates :phone_number, length: { minimum: 14, maximum: 14}

end