require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
owner1 = CarOwner.new("Hugo")
owner2 = CarOwner.new("Lesli")
owner3 = CarOwner.new("Juan")
owner4 = CarOwner.new("david")
mechanic1 = Mechanic.new("jose", "domestic")
mechanic2 = Mechanic.new("alex", "domestic")
mechanic3 = Mechanic.new("angel", "foreign")
mechanic4 = Mechanic.new("ruby", "foreign")
mechanic5 = Mechanic.new("row", "domestic")
car1 = Car.new("Honda", "civic", "domestic", owner1, mechanic2)
car2 = Car.new("Acura", "tsx", "foreign", owner1, mechanic2)
car3 = Car.new("Volvo", "CX90", "foreign", owner1, mechanic2)
car4 = Car.new("BMW", "M3", "domestic", owner3, mechanic3)
car5 = Car.new("Ford", "F150", "domestic", owner4, mechanic2)
#owner2.cars_specific_owner
  #owner3.owner_specific_mechanic
#CarOwner.avg_car_owner
#mechanic2.mechanic_service
mechanic2.all_car_owners_mechanic



#binding.pry
