class Restaurant
  attr_reader :name, :string
  @@all = []

  def initialize(name, string)
    @name = name
    @string = string
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|reviews| reviews.restaurant == self.name}
    # binding.pry
    # returns an array of all reviews for that restaurant
  end

  def customers
    reviews.collect{|reviews| reviews.customer}.uniq
    # binding.pry 
    # Returns a **unique** list of all customers who 
    # have reviewed a particular restaurant.
  end

  def average_star_rating
    total = reviews.collect{|reviews| reviews.rating}
    total.sum / total.length
    # binding.pry
    # returns the average star rating for a restaurant based 
    # on its reviews
  end
end

# binding.pry