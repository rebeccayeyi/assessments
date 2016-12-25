class Restaurant

  attr_reader :name
  attr_accessor :reviews, :customers

  @@restaurants = []

  def initialize(name)
    @name = name
    @reviews = []
    @customers = []
    @@restaurants << self
  end

  def self.all
    @@restaurants
  end

  def self.find_by_name(name)
    @@restaurants.select {|restaurant| restaurant.name == name}
  end

end