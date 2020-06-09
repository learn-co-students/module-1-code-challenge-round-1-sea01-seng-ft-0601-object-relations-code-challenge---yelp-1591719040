class Review

    attr_reader :customer, :restaurant, :rating
    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating =  rating
        @@all << self
    end 

    def customer
        @customer
    end 

    def restaurant
        @restaurant
    end 

    def rating
        @rating
    end 

    def self.all
    end 
end