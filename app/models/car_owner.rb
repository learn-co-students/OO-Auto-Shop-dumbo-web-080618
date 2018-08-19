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

  def cars_owned
    Car.all.select {|car| car.car_owner == self}
  end

  def mechanics
    self.cars_owned.map {|car| car.mechanic}.uniq
  end

  def self.avg_cars
    sum = 0
    self.all.each {|owner| sum += owner.cars_owned.length}
    sum/all.length
  end



end
