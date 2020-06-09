class Restaurant
 
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  @@all
end

def reviews
  review.all.find_all{|review|
  review.restaurant == self}
end

def customers
    review.map {|restaurant|
    restaurant.customer == self}.uniq
  end

def average_star_rating
      totals = all.map {|review|review.raiting}
      total.sum / all.length
end
end
#### Restaurant

# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.

#### Restaurant

# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
#   - Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings
