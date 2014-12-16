require 'pry'
require 'pry-byebug'


#Apartment class
class Apartment
	attr_accessor  :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms

	def initialize(name, apt_sqft, apt_bathrooms, apt_bedrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bathrooms = apt_bathrooms
		@apt_bedrooms = apt_bedrooms
	end

end
