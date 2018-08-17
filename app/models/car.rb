class Car
 @@all = []
  attr_reader :make, :model, :classification
  attr_accessor :owner, :mechanic

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @owner = owner
    @mechanic = mechanic
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end
def self.car_classification
  Car.all.map do |cla|
    cla.classification
    #binding.pry
  end
end

def mechanic_expert
hugo = Car.all.select{|mech| self.classification == mech.mechanic.specialty}
  mech =  hugo.map do |nicz|
    nicz.mechanic.name
end
end
end
