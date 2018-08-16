class CarOwner

  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  # - Get a list of all owners
  def self.all 
    @@all
  end

  # - Get a list of all the cars that a specific owner has
  def my_cars
    Car.all.select{|car| car.car_owner == self}
  end
  # - Get a list of all the mechanics that a specific owner goes to
  def my_mechanics
    self.my_cars.map{|car| car.mechanic}.uniq
  end
  # - Get the average amount of cars owned for all owners


end
