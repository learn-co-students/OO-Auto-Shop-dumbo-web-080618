class Car
  attr_accessor :owner, :mechanic, :classification
  @@all = []
  attr_reader :make, :model

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end
  def self.all
    @@all
  end
  # Get a list of all car classifications
  def self.classification
    self.all.map{|ification| ification.classification}
    # binding.pry
  end

  # Get a list of mechanics that have an expertise that matches(is keywrd for conditional use .select) the car classification

  def list_of_expert_mech
    car_class = Car.all.select{|match| self.classification == match.mechanic.specialty}
    car_class.map{|mech| mech.mechanic}
  end
end
