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
  #binding.pry
    Review.all.find_all {|reviews| if reviews.restaurant == self
      reviews.rating end}
  end

  def customers
     binding.pry
    cust = self.reviews.collect {|customers| customers.customer}
  #list of cust name instead of array?
  end
end
