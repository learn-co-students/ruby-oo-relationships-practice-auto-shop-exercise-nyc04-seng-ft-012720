class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.car_owner}
  end

  def mechanics
    cars.map {|car| car.mechanic}
  end

  def self.avg_cars_owned
    Car.all.length.to_f/self.all.length.to_f
  end
end
