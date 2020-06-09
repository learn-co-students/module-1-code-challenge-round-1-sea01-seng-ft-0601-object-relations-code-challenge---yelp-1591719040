require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ala= Customer.new("Ala", "Juni")
john = Customer.new("John", "Jon")
steve = Customer.new("Steve", "Malle")

dragon = Restaurant.new("Flaming Dragon")
cluck = Restaurant.new("Clucking Chicken")

rev1 = Review.new(ala,dragon, 20)
rev4 = Review.new(ala,dragon, 40)

rev2 = Review.new(ala, cluck,33)
rev3 = Review.new(john, dragon, 24)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line