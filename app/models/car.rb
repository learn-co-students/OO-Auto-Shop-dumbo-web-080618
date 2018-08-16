class Car

  attr_reader :make, :model, :mechanic, :car_owner, :classification
  @@all = []

  # - Get a list of all cars
  def self.all
    @@all
  end

  def initialize(make, model, classification, mechanic, car_owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @car_owner = car_owner
    @@all << self
  end

# - Get a list of all car classifications
  def self.classifications
    Car.all.map{|car| car.classification}.uniq
  end

  # - Get a list of mechanics that have an expertise that matches the car classification
  def mechanics
    Mechanic.all.select {|mechanic| self.classification == mechanic.specialty}
  end
end
