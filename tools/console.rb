require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

john = CarOwner.new("John")
shein = CarOwner.new("Shein")

brook = Mechanic.new("Brooklyn", "Antique")
manhat = Mechanic.new("Manhattan", "Exotic")
downtown = Mechanic.new("Downtown", "Clunker")

ford = Car.new("Ford", "F1", "Antique", john, manhat)
audi = Car.new("Audi", "Q8", "Exotic", shein, brook)
honda = Car.new("Honda", "B4", "Clunker", john, manhat)
lexus = Car.new("Lexus", "L3", "Antique", shein, brook)
hyundai = Car.new("Hyundai", "H9", "Clunker", john, brook)


binding.pry
0
