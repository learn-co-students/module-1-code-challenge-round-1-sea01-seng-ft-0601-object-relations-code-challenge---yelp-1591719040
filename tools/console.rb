require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

gabriel = Customer.new("Gabriel", "Gabriel Castro")
john = Customer.new("John", "John Smith")

red_lobster = Restaurant.new("Red Lobster")
olive_garden = Restaurant.new("Olive Garden")

r1 = Review.new
r2 = Review.new


binding.pry
0 #leave this here to ensure binding.pry isn't the last line