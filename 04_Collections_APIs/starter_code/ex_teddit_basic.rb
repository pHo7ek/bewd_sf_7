require 'pry'


#TEDDIT:  Strings - Student's File
# Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
# This exercise will be used throughout the ruby portion of this course. 
# Each lesson we will incrementally build a news aggregator. 
# We will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit. 
# But until then we will hard code stories.

#Goals 
#1 -  Get the story title, category from user from the command line 
#2 -  Write a conditional that determine upvotes based on the category
#3 -  Save every story to collection (each story should be a hash)
#4 -  Print each stories title, category and upvotes to the screen

def get_story
  puts "What is the name of your story: \n"
  title = gets.strip
  puts "Please provide a category: \n"
  category = gets.strip
 
  determine_upvotes(title, category)
end

def  determine_upvotes(title, category) #passing in local variables
  upvotes = 10
  if category.downcase == "food"  
    upvotes *= 5
  elsif category.downcase == "cats"
    upvotes *= 7 
  elsif category.downcase == "cars"
    upvotes *= 4
  else 
    upvotes *= 1
  end
  create_story(title, category, upvotes)
 end

def create_story(title, category, upvotes)
  {title: title, category: category, upvotes: upvotes}
  
end 

#def get_the_stories
  #stories = [] #create a container for all stories
  #story = get_story # get one story & create hash
  #stories.push(story)  #pass hash into stories array  
  

#def print_news_feed(stories)
  #stories.each do |story|
    #each story is a hash
    #puts "Tile: #{story[:title]}, category: #{story[:category]}, upvotes: #{:upvotes}"
  #end
#end 

#def yes_or_no
  #if yes


get_story



=======
 
>>>>>>> eec1c77e1d6bbd8008e6fec826218813af4e481b
