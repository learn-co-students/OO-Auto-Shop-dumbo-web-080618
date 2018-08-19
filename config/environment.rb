require 'bundler/setup'
Bundler.require
require_all 'app'

require 'pry'


danny = CarOwner.new("danny")
bruce = CarOwner.new("bruce")
camerons_dad = CarOwner.new("cameron's dad")

doc_brown = Mechanic.new("Doc Brown", "fictional")
dominic_toretto = Mechanic.new("Dominic Toretto", "muscle")
brian_the_cop = Mechanic.new("Brian (He's a Cop)", "import")

skyline = Car.new("Nissan", "Skyline", "import", danny, brian_the_cop)
gto = Car.new("Pontiac", "GTO", "muscle", danny, dominic_toretto)
delorean = Car.new("Deloran", "Time Machine", "fictional", danny, doc_brown)
bullitt = Car.new("Ford", "Mustang", "muscle", danny, dominic_toretto)
batmobile = Car.new("Batmobile", "Tumblr", "fictional", bruce, doc_brown)
lambo = Car.new("Lamborghini", "Diablo", "import", bruce, brian_the_cop)
ferrari = Car.new("Ferrari", "250 GT", "import", camerons_dad, brian_the_cop)

dominic_toretto.cars

binding.pry
