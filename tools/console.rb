require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

abid = CarOwner.new("Abid")
mavi = CarOwner.new("Mavi")
phil = CarOwner.new("Phil")
tom = CarOwner.new("Tom")
gurjot = CarOwner.new("Gurjot")

firuz = Mechanic.new("Firuz", "antique")
jemy = Mechanic.new("Jemy", "clunker")
wesley = Mechanic.new("Wesley", "electric")
daryl = Mechanic.new("Daryl", "electric")
daryl2 = Mechanic.new("Daryl", "exotic")


modelx = abid.my_car("Tesla", "Model X", "electric", wesley)
model_s = gurjot.my_car("Tesla", "Model S", "electric", wesley)
camaro = tom.my_car("Toyota", "'94 Camaro", "antique", firuz)
ferrari = phil.my_car("Ferrari", "Crazy", "exotic", daryl)
lambo_truck = abid.my_car("Lambo", "Truck", "exotic", daryl)
rav4 = mavi.my_car("Toyota", "Rav 4", "clunker", jemy)

# pp CarOwner.all
# pp Mechanic.all
# pp Car.all

# pp abid.my_mechanics

# p CarOwner.average_amount_of_cars

# p Car.car_classifications

# pp rav4.find_mechanic

pp wesley.car_owner_names