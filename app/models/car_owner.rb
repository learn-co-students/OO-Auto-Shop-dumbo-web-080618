require 'pry'

class CarOwner

  attr_reader :name
  attr_accessor :mechanic

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_owned
    Car.all.select do |data|
      data.car_owner == self
    end
  end

  def used_mechanics
    cars_owned.map do |data|
      data.mechanic
    end
  end

  def self.count_cars
    count = 0
    Car.all.map do |data|
      count += 1
    end
    count
  end

  def self.count_owners
    count = 0
    all.map do |data|
      count += 1
    end
    count
  end

  def self.avg_amount_cars
    count_cars / count_owners
  end

end
