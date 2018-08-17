class Car

  attr_reader :make, :model, :classification, :car_owner,:mechanic
  @@all = []

  def initialize(make, model, classification,car_owner,mechanic)
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

  def self.car_classifications
    Car.all.map {|info| info.classification}
  end

  def list_mechanics
    special = Car.all.select {|info| info.mechanic.specialty == self.classification}

    mechanic = special.map {|list| list.mechanic}
    #binding.pry

  end



end
