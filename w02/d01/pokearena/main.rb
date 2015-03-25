require 'pry'
require_relative 'lib/pokemon'
require_relative 'lib/trainer'
require_relative 'lib/nurse'


squirtle = Pokemon.new("Squirtle", 1, "water", 30, 25, 50, 10)
pikachu = Pokemon.new("Pikachu", 2, "electric", 40, 25, 50, 20)
charmander = Pokemon.new("Charmander", 3, "fire", 60, 25, 50, 5)

bulbasaur = Pokemon.new("Bulbasaur", 4, "grass", 100, 25, 50, 5)
weedle = Pokemon.new("Weedle", 5, "grass", 100, 25, 50, 5)
butterfree = Pokemon.new("Butterfree", 6, "bug", 100, 25, 50, 5)
caterpie = Pokemon.new("Caterpie", 7, "bug", 100, 25, 50, 5)
sandshrew = Pokemon.new("Sandshrew", 8, "dirt", 100, 25, 50, 5)


ash_kechum = Trainer.new("Ash Kechum", 14, "Pallet Town", [squirtle, pikachu, charmander, bulbasaur, weedle])
nurse_mary = Nurse.new("Mary", 26, "Pallet Town")

binding.pry