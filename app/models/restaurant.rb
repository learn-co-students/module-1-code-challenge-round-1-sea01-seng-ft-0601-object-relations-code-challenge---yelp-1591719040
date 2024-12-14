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

  # Restaurant#reviews`
  # - returns an array of all reviews for that restaurant
  def reviews
    Review.all.select {|review|review.restaurant == self}
  end
  
  # Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def customers
    reviews.collect {|review| review.customer}.uniq
  end

end
