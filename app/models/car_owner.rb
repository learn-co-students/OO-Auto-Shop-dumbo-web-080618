class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #Get a list of all owners
  def self.all
      @@all
  end

  #Get a list of all the cars that a specific owner has
  def my_car
    Car.all.select { |c| c.owner == self }
  end

  #Get a list of all the cars that a specific owner has
  def list_mechanic
    self.my_car.map { |m| m.mechanic.name }.uniq
  end

  #Get the average amount of cars owned for all owners
  def self.average
    Car.all.count/CarOwner.all.count.to_f
  end
end
