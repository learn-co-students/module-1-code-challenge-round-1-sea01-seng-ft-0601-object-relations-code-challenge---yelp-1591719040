require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#restaurant
fogon = Restaurant.new("Fogon")
ruth_chris = Restaurant.new("Ruth Chris")
sushi_ka = Restaurant.new("Sushi Ka")

#customer
danira = Customer.new("Danira", "Cortez")
erika = Customer.new("Erika", "Cortez")
david = Customer.new("David", "Cortez")
kenz = Customer.new("Kenz", "Brown")
em = Customer.new("Emily", "Paul")

#review
r1 = Review.new(danira, fogon, 5)
r2 = Review.new(erika, fogon, 4)
r3 = Review.new(david, ruth_chris, 3)
r4 = Review.new(em, ruth_chris, 5)
r5 = Review.new(kenz, sushi_ka, 1)
r6 = Review.new(danira, sushi_ka, 4)
r7 = Review.new(erika, ruth_chris, 2)
r8 = Review.new(kenz, sushi_ka, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line