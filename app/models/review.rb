class Review

    attr_reader :customer, :resturaunt
    attr_accessor :rating

    @@all = [ ]
    def initialize(customer, restaurant, rating)
        @customer= customer
        @restaurant= resturaunt
        @rating= rating
        @@all << self
    end

    def self.all
        @@all
    end
  
end