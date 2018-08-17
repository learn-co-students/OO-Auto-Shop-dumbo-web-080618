class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  #Get a list of all mechanics
  def self.all
    @@all
  end

  #Get a list of all cars that a mechanic services
  def my_car
    Car.all.select { |c| c.mechanic == self }
  end

  #Get a list of all the car owners that go to a specific mechanic
  def find_owner
    self.my_car.map { |m| m.owner}.uniq
  end

  #Get a list of the names of all car owners who go to a specific mechanic
  def find_car
    self.my_car.map { |m| m.owner.name}.uniq
  end

end
