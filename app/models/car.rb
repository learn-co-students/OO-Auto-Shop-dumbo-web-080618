class Car

  attr_reader :make, :model, :classification, :owner, :mechanic
  @@all = []

  def initialize(make, model, classification, owner)
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

  def self.all_classificatoins
    all.map {|car| car.classification}
  end

  def mechanics
    Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
  end

end
