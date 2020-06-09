require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
daniel_patnode = Customer.new("Daniel", "Patnode")
john_smith = Customer.new("John", "Smith")
jon_doe = Customer.new("John", "Doe")

mcdonalds = Restaurant.new("McDonalds")
wendys= Restaurant.new("Wendys")
jack_in_the_box = Restaurant.new("Jack in the Box")

r1 = Review.new(daniel_patnode, wendys, 6)
r2 = Review.new(daniel_patnode, mcdonalds, 7)
r3 = Review.new(john_smith, jack_in_the_box, 5)
r4 = Review.new(jon_doe, mcdonalds, 8)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line