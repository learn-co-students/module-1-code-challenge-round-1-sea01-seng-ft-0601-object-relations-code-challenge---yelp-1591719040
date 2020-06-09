class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    cust = Review.all.find_all {|reviews| if reviews.customer == self 
    reviews.restaurant end}
    cust.collect {|customers| customers.customer}.uniq
  end

  def add_review(restaurant, rating)
    binding.pry
    Review.new(self, restaurant, rating)
  end
  
  def num_reviews
    Review.all.find_all {|reviews| if reviews.customer == self 
    reviews.restaurant end}.count    
  end

  def self.find_by_name(name)
    #didn't start
  end
end
