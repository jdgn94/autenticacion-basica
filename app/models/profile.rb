class Profile < ApplicationRecord
	belongs_to :User
	attr_accessor :nombre, :apellido, :dinero_disponible
end
