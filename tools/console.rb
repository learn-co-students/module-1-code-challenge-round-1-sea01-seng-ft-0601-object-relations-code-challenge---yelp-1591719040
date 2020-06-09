require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

carly = Customer.new("Carly", "La")
george = Customer.new("George", "Washington")
john = Customer.new("John", "Adams")
abraham = Customer.new("Abraham", "Lincoln")
carly2 = Customer.new("Carly", "L")

sharetea = Restaurant.new("Sharetea")
popeyes = Restaurant.new("Popeye's")
chick = Restaurant.new("Chick-fil-A")
tacobell = Restaurant.new("TacoBell")

review1 = Review.new(carly, sharetea, 10)
review2 = Review.new(george, sharetea, 8)
review3 = Review.new(john, sharetea, 9)
review4 = Review.new(abraham, popeyes, 10)
review5 = Review.new(george, tacobell, 2)
review6 = Review.new(george, chick, 10)
review7 = Review.new(abraham, chick, 9)
review8 = Review.new(carly, sharetea, 9)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line