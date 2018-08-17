require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

felix = CarOwner.new("Felix")
haley = CarOwner.new("Haley")
vedim = CarOwner.new("Vidim")
lihn = CarOwner.new("Lihn")

kevin = Mechanic.new("Kevin", "mech")
otash = Mechanic.new("Otash", "non-mech")
some_guy = Mechanic.new("some guy", "mech")
juan = Mechanic.new("Juan", "non-mech")

felix.add_car("toyoya", "2B", "mech", kevin)
felix.add_car("kel", "9S", "mech", some_guy)
felix.add_car("kel", "A2", "mech", kevin)

haley.add_car("smart car", "Haley's smart car", "mech", some_guy)

vedim.add_car("mazeraty", "quidtro purte", "non-mech", juan)

otash.add_car("brand", "something", "non-mech", lihn)

binding.pry
