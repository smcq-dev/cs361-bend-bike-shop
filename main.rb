!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)

bike.add_cargo(:apples)
bike.add_cargo(:water)
bike.add_cargo(:repair_kit)

puts "Space for #{bike.items_left} items left."

rental1 = Rental.new(bike.id, "11/30/23")

rental1.activate!
