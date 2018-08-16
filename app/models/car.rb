class Car

  attr_reader :make, :model
  attr_accessor :car_owner, :mechanic, :classification

  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  # - Get a list of all cars
  def self.all 
    @@all
  end
  # - Get a list of all car classifications
  def self.all_classifications 
    self.all.map{|car| car.classification}.uniq
  end

  # - Get a list of mechanics that have an expertise that matches the car classification
  def get_experts
    Mechanic.all.select{|mechanic| mechanic.specialty == self.classification}
  end

end
