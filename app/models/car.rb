class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  ALL = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    ALL << self
  end

  def self.all 
    ALL
  end

  def self.car_classifications
    self.all.map do |car|
      car.classification
    end
  end

  def find_mechanic
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

end
