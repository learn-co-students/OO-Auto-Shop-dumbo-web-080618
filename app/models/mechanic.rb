





class Mechanic
  @@all = []
  attr_reader :name, :specialty

  # - Get a list of all mechanics
  def self.all
    @@all
  end

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  # - Get a list of all cars that a mechanic services
  def cars
    Car.all.select {|car| car.mechanic == self}
  end

  # - Get a list of all the car owners that go to a specific mechanic
  def car_owners
    self.cars.map {|car| car.car_owner}.uniq
  end

  # - Get a list of the names of all car owners who
  # go to a specific mechanic
  def car_owners_names
    car_owners.map{|owner| owner.name}
  end

end
