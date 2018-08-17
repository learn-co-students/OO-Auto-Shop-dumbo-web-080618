class Car

  attr_reader :make, :model
  attr_accessor :classification, :car_owner, :mechanic

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

  def self.all_classification
    self.all.map { |e| e.classification }.uniq
  end

  def mechanic_expert
    zora = @@all.map{|e| e.mechanic }.uniq
    zora.select {|z| z.specialty == self.classification} 
  end

end
