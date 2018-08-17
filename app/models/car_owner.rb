class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def list_cars
    Car.all.select {|cars| cars == self}
  end

  def mechanics
    list_cars.map {|car| car.mechanic}
  end

  def self.average
    owner = self.all.length
    cars = Car.all.length
    average = (cars/owner).round(0)
    average
  end





end
