class Consultation < ApplicationRecord

	validates_presence_of :name, :email, :phone_number, :description
end
