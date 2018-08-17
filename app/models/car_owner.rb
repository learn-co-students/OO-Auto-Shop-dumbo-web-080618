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

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    cars.map {|car| car.mechanic}.uniq
  end

  def self.average_cars
    count = 0
    all.each {|owner| count += owner.cars.size}
    count.to_f/(all.count)
  end

end
