class Mechanic

  attr_reader :name, :specialty
  @@all = []
def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

# - Get a list of all mechanics
def self.all 
  @@all
end

# - Get a list of all cars that a mechanic services
def cars_serviced
  Car.all.select{|car| car.mechanic == self}
end

# - Get a list of all the car owners that go to a specific mechanic
def personal_mechanic_of
  self.cars_serviced.map{|car| car.car_owner}
end
# - Get a list of the names of all car owners who
# go to a specific mechanic
def owners_of_cars_serviced
  self.personal_mechanic_of.map{|owner_obj| owner_obj.name}
end


end
