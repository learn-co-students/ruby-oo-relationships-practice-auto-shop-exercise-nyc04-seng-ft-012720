require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cara = Car.new("a make", "a model", "clunker")
carb = Car.new("a make", "a model", "sports")
carc = Car.new("a make", "a model", "import")
card = Car.new("a make", "a model", "import") 
care = Car.new("a make", "a model", "import") 

firuz = CarOwner.new("Firuz")
mavi = CarOwner.new("Mavi")
dmitriy = CarOwner.new("Dmitriy")

wesley = Mechanic.new("Wesley", "clunker")
jemmy = Mechanic.new("Jemmy", "sports")
pano = Mechanic.new("Pano", "import")

cara.owner = firuz
carb.owner = mavi
carc.owner = firuz
card.owner = mavi
care.owner = dmitriy
cara.mechanic = wesley
carb.mechanic = jemmy
carc.mechanic = pano
card.mechanic = pano
care.mechanic = pano

binding.pry
