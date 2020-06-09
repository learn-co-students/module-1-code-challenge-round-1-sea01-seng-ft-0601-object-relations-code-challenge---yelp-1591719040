class Customer
  attr_accessor :given_name, :family_name
  @@all =[]

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self 
  end

  def given_name
      @given_name
  end

  def family_name
    @family_name
  end 

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end 

  # def self.find_by_name(full_name)
  #   Review.select { |review| review == full_name \\\}
  # end 
  # binding.pry


end
