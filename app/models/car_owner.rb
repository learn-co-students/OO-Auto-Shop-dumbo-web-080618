class CarOwner

  attr_reader :name

@@all = []
  def self.all
    @@all
  end


  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    Car.all.select{|car| car.owner == self}
  end

  def mechanic
    cars.map{|car| car.mechanic}
  end

  def num_cars
    cars.length
  end

  def self.ave_cars
    num = self.all.map{|owner| owner.num_cars}
    (num.reduce(:+)).to_f/num.length
  end




end
