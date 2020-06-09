class Review

    attr_reader :customer, :restaurant
    attr_accessor :rating
    @@all = []

    def initialize (customer, restaurant, rating)
        #want rating to be an int though
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    # def customer
    #     @customer
    # end

    # def restaurant
    #     @restaurant
    # end

    def rating 
        @rating = rating
    end

    def self.all
    end

end