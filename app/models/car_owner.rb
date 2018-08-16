
class CarOwner

  attr_reader :name
  @@all = []

  # - Get a list of all owners
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  # - Get a list of all the cars that a specific owner has
  def cars
    Car.all.select {|car| car.car_owner == self}
  end

  # - Get a list of all the mechanics that a specific owner goes to
  def mechanics
    cars.map {|car| car.mechanic}.uniq
  end

  # - Get the average amount of cars owned for all owners
  def self.average_num_cars
    sum = 0
    CarOwner.all.each {|owner| sum += owner.cars.count}
    sum/CarOwner.all.count
  end


end
