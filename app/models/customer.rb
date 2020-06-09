class Customer
  attr_accessor :first_name, :last_name
  @@all = []
  
  def initialize(first_name, last_name)
    @first_name = first_name 
    @last_name = last_name
    @@all << self
  end

  def first_name
    @first_name = first_name
  end

  def last_name
    @last_name = last_name
  end
  
  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

end
