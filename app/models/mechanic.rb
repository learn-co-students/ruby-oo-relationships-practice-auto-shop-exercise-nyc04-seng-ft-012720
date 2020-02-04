class Mechanic

  attr_reader :name, :specialty
  
  @@all = []

  def initialize(name, specialty)
      @name = name
      @specialty = specialty
      @@all << self
  end
  def self.all
      @@all
    #- Get a list of all mechanics
  end
  def owners_by_mechanic
    #- Get a list of all the car owners that go to a specific mechanic
          CarOwner.all.select do |owner|
                  owner.mechanic == self
          end
  end
  def cars_by_mechanic
#- Get a list of all cars that a mechanic services
      owners_by_mechanic.map do |owner|
            owner.car
      end
  end

  
end









