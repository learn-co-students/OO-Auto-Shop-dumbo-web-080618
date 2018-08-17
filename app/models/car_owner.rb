class CarOwner
@@all =[]
  attr_reader :name




  def initialize(name)
    @name = name
    @@all << self

  end
  def self.all
    @@all
  end
  def cars_specific_owner
    Car.all.select do |car|
      car.owner == self
      #binding.pry
    end


end
def owner_specific_mechanic
   hugo = Car.all.select{|mech| mech.owner == self }
   hugo.map do |yes|
     yes.mechanic
   end
end
def self.avg_car_owner
   total = Car.all.map{|own|own.owner}
 avg = total.length
 avg/total.length



end



  #total = specific_gallery.map {|years| years.years_active}

  # total = total.inject{|sum, elm| sum + elm}


#binding.pry


end
