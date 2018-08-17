class Mechanic

  attr_reader :name, :specialty
@@all =[]

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars
  Car.all.select{|cars| cars.mechanic == self}
end

def owners
  cars.map {|cars| cars.car_owner}
end

def names
  owners.map {|own| own.name}
end




end
