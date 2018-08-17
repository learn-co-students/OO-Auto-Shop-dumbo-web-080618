class CarOwner

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_cars
    Car.all.select {|c| c.car_owner == self}
  end

  def all_mechanics
    self.all_cars.map {|c| c.mechanic}.uniq
  end

  def self.average_amount
    aver_amount = 0.0
    self.all.each{|e| aver_amount += e.all_cars.length}
    aver_amount/self.all.length
  end

  def add_car(make, model, classification, mechanic)
    Car.new(make, model, classification, self, mechanic)
  end


end
