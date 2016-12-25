class Review

  attr_reader :name
  attr_accessor :restaurant

  @@reviews = []

  def initialize(name)
    @name = name
    @@reviews << self
  end

  def self.all
    @@reviews
  end
  
end

