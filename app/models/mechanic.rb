class Mechanic

  attr_reader :name, :specialty

@@all = []

  def self.all
    @@all
  end


def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def cars
  Car.all.select{|car| car.mechanic == self}
end

def owners
  cars.map{|car| car.owner}
end

def owner_names
owners.map{|owner| owner.name}

end




end
