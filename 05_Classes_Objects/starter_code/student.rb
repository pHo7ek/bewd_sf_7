require 'pry'
require 'pry-byebug'

#Student class
class Student
	attr_accessor :name, :major, :course, :grade

	def intitialize(name, major, course, grade)
		@name = name
		@major = major
		@course = course
		@grade = grade
	end

end
