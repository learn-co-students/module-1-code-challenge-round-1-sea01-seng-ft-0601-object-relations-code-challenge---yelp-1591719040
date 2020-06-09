class Customer
  attr_accessor :given_name, :family_name
  
  @@all= []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  # Returns a **unique** array of all restaurants a customer has reviewed
  def restaurants
      Review.all.select { |review| review.resturaunt == self }.uniq
  end

end
