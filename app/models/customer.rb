class Customer
  attr_accessor :given_name, :family_name
  @@all =[]

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    Review.all.select{|reviews| reviews.customer == self}.uniq
    binding.pry 
    # Returns a **unique** array of all restaurants a 
    # customer has reviewed
  end

  def add_review
    Review.new(self, restaurant, rating)
    # binding.pry
    # given a **restaurant object** and a star rating (as an integer), 
    # creates a new review and associates it with that customer and 
    # restaurant.
  end

  def num_reviews
    total = Review.all.find_all{|reviews| reviews.customer == self}
    total.length

    # Review.all.find_all{|reviews| reviews.customer == self}.length
    # binding.pry 
  end

  def self.find_by_name(name)
    full_name = name.split(" ")[0]
    name1 = @@all.find{|customers| customers.given_name == fullname[0]}
    name2 = name1.find{|customers| customers.family_name == fullname[1]}
    # binding.pry
  end

  def self.find_all_by_given_name(name)
    @@all.find{|customers| customers.givin_name == name}
    # binding.pry 
  end
end

# binding.pry 