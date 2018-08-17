require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
owner1 = CarOwner.new("Lyn")
owner2 = CarOwner.new("Jaun")
owner3 = CarOwner.new("Mike")

mechanic1 = Mechanic.new("Walter", "antique")
mechanic2 = Mechanic.new("Gina", "exotic")
mechanic3 = Mechanic.new("Prince", "clunker")

car1 = Car.new("toyota", "camri", "antique", owner1, mechanic1)
car2 = Car.new("honda", "civic", "exotic", owner2, mechanic2)
car3 = Car.new("volkswangon", "beetle", "clunker", owner3, mechanic3)

owner2.list_cars
owner2.mechanics

mechanic3.car_list
mechanic1.car_owners

CarOwner.avg_car #call class
Car.classification
car1.list_of_expert_mech
binding.pry
0
