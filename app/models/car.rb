class Car

  attr_reader :make, :model
  attr_accessor :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map {|car| car.classification}
  end

  # Get a list of mechanics that have an expertise that matches the car classification
  def mechanics
    Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
  end

end
