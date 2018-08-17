require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
jason = Mechanic.new("Jason","sport")
jose = Mechanic.new("Jose", "Classic")
benjamin = Mechanic.new("Benjamin", "Modern")

mike = CarOwner.new("Mike")
gina = CarOwner.new("Gina")
ben = CarOwner.new("Ben")

zee = Car.new("Nissan","z60","sport", mike, jason)
civic = Car.new("Honda","Civic","Classic",gina, jose)
maxima = Car.new("Nissan","Maxima","Modern",ben, benjamin)


Car.car_classifications
zee.list_mechanics
gina.list_cars
jason.cars
jason.owners
jason.names




puts CarOwner.average
#
