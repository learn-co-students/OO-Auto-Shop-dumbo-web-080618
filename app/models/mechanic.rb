class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars
  Car.all.select {|car| car.mechanic[0] == self}
end

def car_owners
  self.cars.map {|car| car.car_owner}.uniq
end

def car_owner_names
  self.cars.map {|car| car.car_owner.name}.uniq
end


end
