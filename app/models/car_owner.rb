class CarOwner
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def list_cars
    Car.all.select{|name| name.owner == self}
  # binding.pry
  end
  def mechanics
    # binding.pry
    list_cars.map{|list| list.mechanic}
  end

  def self.avg_car #remember ALL means classmethod
  all_owner = self.all.length #num of car_owners
  all_car = Car.all.length #num of car
  avg = (all_car / all_owner).round(0) #gives average
  end

end



# Get the average amount of cars owned for all owners
