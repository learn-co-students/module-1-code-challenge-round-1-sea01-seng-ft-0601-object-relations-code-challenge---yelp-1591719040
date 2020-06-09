class Customer
  attr_accessor :given_name, :family_name

  @@all = []

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
    rest = Review.all.select { |rev| rev.customer == self }
    #make uniq
  end
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end
  def num_reviews
    restaurants.count
  end
  def self.find_by_name(name) # given a string of a fullname, returns frst customer whose full name matches
  end
  def self.find_all_by given_name(name) #given a string of givename, returns array containg all customers with that given naem
  end
end
