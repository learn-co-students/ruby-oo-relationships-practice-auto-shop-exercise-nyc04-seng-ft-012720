require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tom = CarOwner.new("tom")
abid = CarOwner.new("abid")
gurjot = CarOwner.new("gurjot")
mavi = CarOwner.new("mavi")
lisa = CarOwner.new("lisa")

fred = Mechanic.new("fred","sports")
john = Mechanic.new("john","electric")
geoff = Mechanic.new("geoff","junker")

c1 = Car.new("tesla", "model s", "electric", john, tom)
c2 = Car.new("ferrari", "???", "sports", fred, tom)
c3 = Car.new("tesla", "model t", "electric", john, abid)

binding.pry
