class Mechanic

  attr_reader :name, :specialty

def initialize(name, specialty)
  @name = name
  @specialty = specialty
end
def self.all
  @@all
end

def add_car(make, model, classification, car_owner)
  Car.new(make, model, classification, car_owner, self)
end

def list_of_cars
  Car.all.select {|c| c.mechanic == self}
end

def list_of_car_owner
  self.list_of_cars.map {|c| c.car_owner}.uniq
end

def list_name_of_car_owner
  self.list_of_cars.map {|c| c.car_owner.name}.uniq
end

end
