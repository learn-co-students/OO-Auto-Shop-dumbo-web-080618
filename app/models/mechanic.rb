class Mechanic
  @@all = []
  attr_reader :name, :specialty

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end
def self.all
  @@all
end
# Get a list of all cars that a mechanic services (so calling mechanic3.car_list) will give me name and specialty of mechanic 1- 3
def car_list
  Car.all.select{|ser| ser.mechanic == self}
end
# Get a list of all the car owners that go to a specific mechanic


def car_owners
  car_list.map{|mk| mk.owner.name}
  # binding.pry

end
end
