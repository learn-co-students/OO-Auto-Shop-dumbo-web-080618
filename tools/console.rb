require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#CarOwner.new(name)
joy = CarOwner.new("Joy")
haley = CarOwner.new("Haley")
chris = CarOwner.new("Chris")

# Mechanic.new(name, specialty)
danny = Mechanic.new("Danny", "prius")
gina = Mechanic.new("Gina", "beamer")
eben = Mechanic.new("Andrew", "cardboard")

# Car.new(make, model, classification, mechanic, car_owner)
joys_car1 = Car.new("what", "yes", "prius", danny, joy)
joys_car2 = Car.new("what2", "yes2", "beamer", gina, joy)
haleys_car1 = Car.new("what", "yes", "cardboard", eben, haley)
haleys_car2 = Car.new("what2", "yes2", "cardboard", eben, haley)
chris_car1 = Car.new("what", "yes", "prius", danny, chris)
chris_car2 = Car.new("what2", "yes2", "prius", danny, chris)



binding.pry
