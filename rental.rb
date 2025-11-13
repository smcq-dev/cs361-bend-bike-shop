class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    self.bike.price + self.bike.weight * 2
  end

  def weight
    self.bike.weight
  end

end
