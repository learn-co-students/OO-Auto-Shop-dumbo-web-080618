class Mechanic
  @@all = []

  attr_reader :name, :specialty, :mechanic


def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self

end
def self.all
  @@all
end
def mechanic_service
 serv = Car.all.select{|mech| mech.mechanic == self}
 # serv.map do |yes|
 #   yes.owner
 # end
end
def car_owner_mechanic
  mechanic_service.map do |ruf| ruf.owner

end
end
def all_car_owners_mechanic
  car_owner_mechanic.map do |opp| opp.name
    binding.pry
end
end




end
