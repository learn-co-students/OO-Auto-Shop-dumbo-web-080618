require_relative '../config/environment.rb'
require_relative '../app/models/car_owner.rb'
require_relative '../app/models/car.rb'
require_relative '../app/models/mechanic.rb'

def reload
  load 'config/environment.rb'
end

mechanic1 = Mechanic.new("Ray", "Classic")
mechanic2 = Mechanic.new("Bobby", "Exotic")
mechanic3 = Mechanic.new("Charles", "Truck")

classic_car1 = Car.new("Chevrolet", "El Camino", "Classic")
classic_car2 = Car.new("Chevrolet", "3100", "Classic")
classic_car3 = Car.new("Ford", "F150", "Classic")


exotic_car1 = Car.new("Nissan", "370Z Sport", "Exotic")
exotic_car2 = Car.new("Nissan", "GT-R", "Exotic")
exotic_car3 = Car.new("McLaren", "650S Spider", "Exotic")


truck1 = Car.new("Chevrolet", "Silverado", "Truck")
truck2 = Car.new("Dodge", "Ram 2017", "Truck")
truck3 = Car.new("Dodge", "Ram 1500", "Truck")

classic_car1.mechanic = mechanic1
classic_car2.mechanic = mechanic1
classic_car3.mechanic = mechanic1
exotic_car1.mechanic = mechanic2
exotic_car2.mechanic = mechanic2
exotic_car3.mechanic = mechanic2
truck1.mechanic = mechanic3 
truck2.mechanic = mechanic3
truck3.mechanic = mechanic3

owner1 = CarOwner.new("Winston Rothchild")
owner2 = CarOwner.new("Roberto Alvarez")
owner3 = CarOwner.new("Tabitha Mern")

classic_car1.car_owner = owner1
classic_car2.car_owner = owner2
classic_car3.car_owner = owner1
exotic_car1.car_owner = owner2
exotic_car2.car_owner = owner3
exotic_car3.car_owner = owner1

truck1.car_owner = owner1 
truck2.car_owner = owner3
truck3.car_owner = owner2


=begin
=end

binding.pry
