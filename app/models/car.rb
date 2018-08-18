class Car

  attr_reader :make, :model, :owner, :mechanic

  @@all = []
  def self.all
    @@all
  end



  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.classifications
    self.all.map{|car| car.classification}
  end


  def mechanics
    Mechanic.all.select{|mechanic| mechanic.specialty == self.make}
  end









end
