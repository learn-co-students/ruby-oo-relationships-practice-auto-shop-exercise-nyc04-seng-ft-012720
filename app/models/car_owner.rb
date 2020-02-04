class CarOwner

  attr_reader :name, :car, :mechanic

  @@all = []
  @@cars = {}
  @@mechanics = {}

  def initialize(name, car, mechanic)
    @name = name
    @car = car
    @mechanic = mechanic
    if @@cars[name]
       @@cars[name] << car
    else
       @@cars[name] = []
    end
    if @@mechanics[name]
       @@mechanics[name] << car
    else
       @@mechanics[name] = []
    end
    

    @@all << self
  end
  def self.all
      @@all

  end
  def cars_by_owner
# - Get a list of all the cars that a specific owner has
      @@cars[self.name]
  end
  def mechanics_by_car_owner
#  - Get a list of all the mechanics that a specific owner goes to
      @@mechanics[self.name]

  end
  def buy_new_car(car, mechanic)
      CarOwner.new(self.name, car, mechanic)
      


  end
 
  def self.average_cars_owned_by_owners
#  - Get the average amount of cars owned for all owners
      Car.all.length.to_f/@@all.length.to_f




  end
end









