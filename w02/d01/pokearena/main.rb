require 'pry'
require_relative 'lib/pokemon'
require_relative 'lib/trainer'
require_relative 'lib/nurse'


squirtle = Pokemon.new("Squirtle", "water", 30, 25, 50, 10)
pikachu = Pokemon.new("Pikachu", "electric", 40, 25, 50, 20)
charmander = Pokemon.new("Charmander", "fire", 60, 25, 50, 5)

bulbasaur = Pokemon.new("Bulbasaur", "grass", 100, 25, 50, 5)
weedle = Pokemon.new("Weedle", "grass", 100, 25, 50, 5)
butterfree = Pokemon.new("Butterfree", "bug", 100, 25, 50, 5)
caterpie = Pokemon.new("Caterpie", "bug", 100, 25, 50, 5)
sandshrew = Pokemon.new("Sandshrew", "dirt", 100, 25, 50, 5)


ash_kechum = Trainer.new("Ash Kechum", 14, "Pallet Town", [squirtle, pikachu, charmander])
nurse_mary = Nurse.new("Mary", 26, "Pallet Town")

binding.pry
