require 'pry'

class Mechanic

  attr_reader :name, :specialty
  attr_accessor :car_owner

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def mechanic_cars
    Car.all.select do |data|
      data.mechanic == self
    end
  end

  def mechanic_used
    mechanic_cars.map do |data|
      data.car_owner
    end
  end

  def names_of_owners_to_mechanic
    mechanic_used.map do |data|
      data.name
    end
  end

end
