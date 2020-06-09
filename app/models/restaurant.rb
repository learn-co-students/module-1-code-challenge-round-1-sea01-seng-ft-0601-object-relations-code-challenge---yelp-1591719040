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
    Review.all.select{|review|review.restaurant == self}
  end

  def customers
    reviews.map{|review|review.customer}.uniq
  end

  def average_star_rating
    all_reviews = reviews.map{|review|review.rating}
    all_reviews.sum/all_reviews.size
  end

end
