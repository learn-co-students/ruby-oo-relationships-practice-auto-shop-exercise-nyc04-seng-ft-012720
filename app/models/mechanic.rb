class Mechanic

  attr_reader :name, :specialty
  ALL = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    ALL << self
  end

  def self.all 
    ALL
  end

  def new_car(make, model, classification, car_owner)
    Car.new(make, model, classification, car_owner, self)
  end

  def cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def car_owners
    cars.map do |car|
      car.car_owner
    end
  end
  
  def car_owner_names
    car_owners.map do |car_owner|
      car_owner.name
    end
  end

end
