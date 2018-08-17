require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

g = CarOwner.new("Georgia")
a = CarOwner.new("Anna")
b = CarOwner.new("Brian")
c = CarOwner.new("Carol")

e = Mechanic.new("Eric", "antique")
f = Mechanic.new("Frank", "exotic")
t = Mechanic.new("Tom", "exotic")
i = Mechanic.new("Ian", "clunker")
r = Mechanic.new("Ron", "clunker")
p = Mechanic.new("Paul", "antique")

g.add_car("lexus", 2018, "exotic", f)
g.add_car("prius", 2017, "clunker", i)
b.add_car("mercedes", 1997, "antique", p)
c.add_car("ford", 1999, "exotic", t)
c.add_car("lexus", 2001, "exotic", f)
a.add_car("range", 2005, "clunker", r)
g.add_car("jeep", 2011, "antique", e)
b.add_car("jeep", 2010, "antique", p)

binding.pry
0
