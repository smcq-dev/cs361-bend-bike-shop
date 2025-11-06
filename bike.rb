# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :weight, :cargo, :price

  def initialize(id, color, price, weight = STANDARD_WEIGHT)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @cargo = Cargo.new

  end

  def add_cargo(item)
    @cargo.add_cargo(item)
  end

  def items_left
    @cargo.pannier_remaining_capacity
  end
end

class Rental

  attr_accessor :bikeID, :start_date, :active

  def initialize(bikeID, start_date, active = false)
    @bikeID = bikeID
    @start_date = start_date
    @active = active
  end

  def activate!()
    @active = true
  end

end


class Cargo

  attr_accessor :cargo_contents

  MAX_CARGO_ITEMS = 10

  def initialize()
    @cargo_contents = []
  end

  def add_cargo(item)
    self.cargo_contents << item
  end

  def remove_cargo(item)
    self.cargo_contents.delete(item)
  end

  def pannier_capacity
    MAX_CARGO_ITEMS
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo_contents.size
  end

end