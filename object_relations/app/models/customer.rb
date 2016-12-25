class Customer

  attr_reader :name
  attr_accessor :reviews, :restaurants

  @@customers = []

  def initialize(name)
    @name = name
    @@customers << self
    @reviews = []
    @restaurants = []
  end

  def add_review(review, restaurant)
    review = Review.new(review)
    restaurant = Restaurant.new(restaurant)
    review.restaurant = restaurant
    restaurant.reviews << review
    restaurant.customers << self
    @reviews << review
  end

  def add_restaurant(restaurant)
    restaurant = Restaurant.new(restaurant)
    @restaurants << restaurant
  end

  def self.all
    @@customers
  end

  def self.find_by_name(name)
    @@customers.select {|customer| customer.name == name}
  end

end


# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied to the restaurant
# and tied to the customer
