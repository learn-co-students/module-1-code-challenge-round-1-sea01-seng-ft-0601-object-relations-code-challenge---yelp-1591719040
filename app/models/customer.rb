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

  def own_reviews
    Review.all.select{|review|review.customer == self}
  end

  def restaurants
    own_reviews.map{|review| review.restaurant}.uniq
  end

  def add_review(restaurant, review)
    Review.new(self, restaurant, review)
  end

  def num_reviews
    own_reviews.count
  end

  def self.find_by_name(name)
    name_array = name.split(' ')
    given_name = name_array[0]
    family_name = name_array[1]
    all.select{|customer|customer.given_name == given_name
    }.select{|customer|customer.family_name == family_name}
  end

  def self.find_all_by_given_name(name)
    all.select{|customer|customer.given_name == name}
  end

end
