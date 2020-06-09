class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end
  def customers
    cust= reviews.collect{ |review| review.customer }
    cust.uniq
  end
end
