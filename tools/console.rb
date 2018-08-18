require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



owner1 = CarOwner.new("Jack")
owner2 = CarOwner.new("Jason")

mech1 = Mechanic.new("George", "Ford")
mech2 = Mechanic.new("Mike", "BMW")
mech3 = Mechanic.new("Roman", "Ford")


car1 = Car.new("BMW", "335i", "Coupe", owner1, mech1)
car2 = Car.new("Ford", "Mustang", "Coupe", owner1, mech2)
car3 = Car.new("FORD", "335i", "Coupe", owner1, mech1)




binding.pry
