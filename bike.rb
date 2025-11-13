# Bike
require_relative 'luggage'

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight, :luggage

  def initialize(id, color, price, luggage = nil)
    @id = id
    @color = color
    @price = price 
    @weight = STANDARD_WEIGHT
    @luggage = luggage
  end

  def weight
  luggage ? STANDARD_WEIGHT + luggage.weight : STANDARD_WEIGHT
  end

end
