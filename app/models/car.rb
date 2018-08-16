require 'pry'

class Car

  attr_reader :make, :model, :classification
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
    all.map do |data|
      data.classification
    end
  end

  def expertise
    match = Car.all.select do |data|
      data.mechanic.specialty == self.classification
    end
    match.map do |elmt|
      elmt.mechanic
    end
  end

end
