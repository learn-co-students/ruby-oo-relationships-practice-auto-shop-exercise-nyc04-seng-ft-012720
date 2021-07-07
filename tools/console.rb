require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Car.new("Ford", "Fiesta", "Hatchback")
c2 = Car.new("Ferrari", "250GTO", "Racing")
c3 = Car.new("Ford", "Ka", "Mini")
c4 = Car.new("Fiat", "Fiesta", "Small Hatchback")
c5 = Car.new("Alfa", "155", "GT")
c6 = Car.new("Lancia", "Delta", "Hatchback")
c7 = Car.new("Ford", "FocusRS", "Hatchback")
puts Car.all.length == 7
m1 = Mechanic.new("Alfonso", "Hatchback")
m2 = Mechanic.new("Ryan", "GT")
m3 = Mechanic.new("Enzo", "Racing")
m4 = Mechanic.new("Dino", "Hatchback")
m5 = Mechanic.new("Hakinen", "Small Hatchback")
m6 = Mechanic.new("Senna", "Mini")
m7 = Mechanic.new("Vatanen", "Racing")
puts Mechanic.all.length == 7
co1 = CarOwner.new("Bob", c1, m4)
co2 = CarOwner.new("Matilda", c3, m6)
co3 = CarOwner.new("Joe", c4, m5)
co4 = CarOwner.new("Jack", c5, m2)
co5 = CarOwner.new("Booooo", c7, m1)
co6 = CarOwner.new("Abishola", c2, m7)
puts CarOwner.all.length == 6
co2.buy_new_car(c4, m5)
co3.buy_new_car(c2, m7)
co4.buy_new_car(c7, m1)
co5.buy_new_car(c3, m6)
co6.buy_new_car(c4, m5)
co1.buy_new_car(c7, m1)
co6.buy_new_car(c3, m6)

co2.cars_by_owner
co4.cars_by_owner
co5.cars_by_owner

co2.mechanics_by_car_owner
co4.mechanics_by_car_owner
co5.mechanics_by_car_owner



m4.owners_by_mechanic
m2.owners_by_mechanic

Car.cars_classifications
c2.mechanics_by_classification
c5.mechanics_by_classification
c6.mechanics_by_classification

CarOwner.average_cars_owned_by_owners











binding.pry
