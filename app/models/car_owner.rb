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

  def add_car(make, model, classification, mechanic)
    Car.new(make, model, classification, self, mechanic)
  end

  def cars
    Car.all.select {|car| car.car_owner == self}
  end

  def mechanics
    self.cars.map {|car| car.mechanic}
  end

  # Get the average amount of cars owned for all owners
  def self.avg_amount_of_cars
    amount = self.all.map {|car_owner| car_owner.cars.size}
    amount.reduce(:+) / amount.size
  end
end
