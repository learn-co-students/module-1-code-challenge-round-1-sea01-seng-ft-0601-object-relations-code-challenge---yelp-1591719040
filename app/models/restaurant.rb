class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # def name
  #   @name
  # end

  def reviews
    Review.all
  end

  def customer_reviewers
    if Review.restaurant == name
      return (customer.all)
    end
  end

  def average_star_rating
    #add all ratings, divide by number of ratings, preferably as variables#
end