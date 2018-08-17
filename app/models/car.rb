class Car

  attr_reader :make, :model, :classification
  attr_accessor :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  #Get a list of all cars
  def self.all
    @@all
  end

  #Get a list of all car classifications
  def self.list_classification
    self.all.map { |c| c.classification }.uniq
  end

  #Get a list of mechanics that have an expertise that matches the car classification
  def list_mechanic
    Mechanic.all.select do |m|
      self.classification == m.specialty
    end
  end

end
