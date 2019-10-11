require 'pry'
require './app'

building1 = Building.new("Ford", "235 E Weston Way", 5, 40)
building2 = Building.new("Arty", "907 S Lipan Street", 15, 250)
building3 = Building.new("Snowy", "375 N Treemont Avenue", 8, 70)

fermi_estimate = Building.average_number_of_tenants/(building1.number_of_floors + building2.number_of_floors + building3.number_of_floors)

    binding.pry