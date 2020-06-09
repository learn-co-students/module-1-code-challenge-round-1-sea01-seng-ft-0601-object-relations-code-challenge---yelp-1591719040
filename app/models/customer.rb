class Customer

  attr_accessor :given_name, :family_name

  @@all = []
  
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
  @@all
end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
restaurant.all.find_all{|restaurant|
restaurant.customer == self}.uniq
  end

def add_review(restaurant, rating)
  Review.new(self, restaurant, rating)
end

def customer num_reviews
  total = customer.map {|customer|customer.review}
  total.sum
end

def self.find_by_name(name)
customer.all.find_all{|customer|
customer.full_name}.uniq
end

end
# self.find_all_by_given_name(name)
# calling on the previous method in order
# to get the uniq name of the customer and 
# then returning an array with that name

   
#### Customer
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
# - `Customer#add_review(restaurant, rating)`
#   - given a **restaurant object** and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.

#### Customer
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_given_name(name)`
#   - given a string of a given name, returns an **array** containing all customers with that given name
