class CarOwner

  attr_reader :name
  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all 
    ALL
  end

  def my_car(make, model, classification, mechanic)
    Car.new(make, model, classification, self, mechanic)
  end

  def my_cars
    Car.all.select do |car|
      car.car_owner == self
    end
  end

  def my_mechanics
    my_cars.map do |car|
      car.mechanic
    end
  end

  def self.average_amount_of_cars
    Car.all.length / self.all.length.to_f
  end

end
