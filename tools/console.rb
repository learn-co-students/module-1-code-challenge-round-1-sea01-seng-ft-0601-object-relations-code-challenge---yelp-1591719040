require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Customer1", "One")
customer2 = Customer.new("Customer2", "Two")
customer3 = Customer.new("Customer3", "Three")

restaurant1 = Restaurant.new("Restaurant1", "One")
restaurant2 = Restaurant.new("Restaurant2", "Two")

review1 = Review.new("Customer1", "Restaurant1", 1) 
review2 = Review.new("Customer2", "Restaurant2", 2) 
review2 = Review.new("Customer3", "Restaurant1", 3) 
review4 = Review.new("Customer3", "Restaurant2", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line