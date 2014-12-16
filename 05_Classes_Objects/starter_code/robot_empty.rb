#CODE ALONG & LAB WORK 

#Create a Robot Factor
# 

require 'pry'
require 'pry-byebug'
 
#State & Object Factory: factory that creates and instiantes the robots
#Behavior: Collection of class methods, instance methods, instance variable, local variables, constants etc., 
 
class Robot
 
  #getter && setter methods for each attribute
  attr_accessor  :name, :type, :origin
 
  #instance variables are available through the class. @name is an instance variable 
  def initialize(name, type, origin)
    @name = name
    @type = type
    @origin = origin 
  end
 
  #instance method
  def fly
    add_wings_and_take_off
  end
 
  def laser_master
    if type == "Super Android"
      add_laser_training
    else
      puts "I'm #{name} a #{type} robot. I don't have laser skills. Save up more money and buy a better robot, probably one that shoots lasers, because thats awesome"
    end
  end
 
 # class methds can be called like this Robot.make_robots(5)
 def self.make_robots(num_of_robots)
  "I will create #{num_of_robots} in the factory. They will be delivered tomorrow."
  robots = num_of_robots.to_i
  robots.times do 
    Robot.random_robot_maker
  end 
 end

 def self.random_robot_maker
  names = ["Kisha", "Bryan", "Kevin", "Tyler", "Kellen", "Christoph", "Tony"]
  types = ["Super_Android", "Andriod", "Titan"]
  origins = ["New Jersey", "Venus", "Wally_World", "Space"]

  name = names.sample
  type = types.sample
  origin = origins.sample

  r = Robot.new(name, type, origin)
  puts "I created #{name}, it is a #{type} robot, it is from #{origin}"
  return r 
 end

 #over riding the to_s method
 def to_s
   puts "My name is #{name}. I'm a #{type} robot. I was built in #{origin} "
 end
 
private
 
#usually used within instance && class methods.
def add_wings_and_take_off
  puts "I'm fucking awesome, I fly and I'm a robot!"
end

def add_laser_training
  puts "I'm SUPER awesome. I'm #{name}, an amazing #{type} with laser fighting skills"
end

 
end

steve = Robot.new("Steve", "Super Android", "California")
casey = Robot.new("Casey", "Android", "Florida")

Robot.make_robots(13)
 
# Robot.random_robot_maker
# Robot.make_robots(20)
 
# happy_robot = Robot.random_robot_maker
# happy_robot.fly
# happy_robot.laser_master 