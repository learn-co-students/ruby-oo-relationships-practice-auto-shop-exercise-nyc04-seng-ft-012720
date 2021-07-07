class Car

  attr_reader :make, :model, :classification, :mechanic, :car_owner

  @@all = []

  def initialize(make, model, classification, mechanic, car_owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @car_owner = car_owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map {|car| car.classification}
  end

  def mechanics
    Mechanic.all.select {|m| m.specialty == self.classification}
  end
end
