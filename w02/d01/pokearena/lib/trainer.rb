require 'pry'

class Trainer
	attr_reader :name, :age, :hometown, :pokemons

	def initialize(name, age, hometown, pokemons)
		@name = name
		@age = age
		@hometown = hometown
		@pokemons = pokemons
		
	end
	
#
# The folowing are methods that will need to be created to handle the listed behaviors
#

# List stats
	def stats
		puts "Name: #{@name}"
		puts "Age: #{@age}"
		puts "Hometwon: #{@hometown}"
		trainers_pokemon = @pokemons.map { |pokemon| pokemon.name }
		puts "Pokemon: #{trainers_pokemon}"
	end

# List pokemon
	def list_pokemon
		puts "Ash is holding:"
		current_pokemon =  @pokemons.map { |pokemon| pokemon.name}
		current_pokemon.each_with_index { |name, idx| puts "#{idx}. #{name}"}

		return current_pokemon
	end

# List pokemon information

	def pokemon_information
		@pokemons.each do |pokemon|
			puts "#{pokemon.name}: "
			pokemon.stats
		end
	end

# Add pokemon, while number of pokemon < 6
	def add(pokemon)
		if @pokemons.count >= 6
			"#{@name} can't cary any more Pokemon!"
		else
			current_pokemon = @pokemon
			current_pokemon.push(pokemon)
			@pokemon = current_pokemon
		end
	end

	
end









