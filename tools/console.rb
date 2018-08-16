require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

bill = Mechanic.new("Bill", "antique")
steve = Mechanic.new("Steve", "exotic")
carl = Mechanic.new("Carl", "clunker")
max = Mechanic.new("Max", "exotic")

mike = CarOwner.new("Mike")
jill = CarOwner.new("jill")
john = CarOwner.new("John")

honda = Car.new("Honda", "Civic", "clunker", mike, carl)
bmw = Car.new("BMW", "i8", "exotic", jill, carl)
audi = Car.new("Audi", "A4", "exotic", jill, max)
firebird = Car.new("Pontiac", "Firebird", "antique", john, bill)

carl.names_of_owners_to_mechanic
# #
binding.pry
0
