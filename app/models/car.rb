class Car

  attr_reader :make, :model, :classification

  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end
  def self.all
      @@all
      # - Get a list of all cars
  end
  def self.cars_classifications
  # - Get a list of all car classifications
      result= []
      all.map do |car|
           result << car.classification
      end
      result.uniq
  end
  def mechanics_by_classification
 #- Get a list of mechanics that have an expertise that matches the car classification
      Mechanic.all.select do |mechanic|
               mechanic.specialty == self.classification
      end

  end
end








