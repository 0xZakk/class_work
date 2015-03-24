require 'pry'

class Pokemon
	attr_reader :id, :poketype, :attack, :defense, :speed 
	attr_accessor :name, :hp

	def initialize(name, poketype, hp, attack, defense, speed)
		@name = name
		@poketype = poketype
		@hp = hp
		@attack = attack
		@defense = defense
		@speed = speed
	end

#
# The folowing are methods that will need to be created to handle the listed behaviors
#

# List stats
	def stats
		puts "HP: #{@hp}"
		puts "Attack: #{@attack}"
		puts "Defense: #{@defense}"
		puts "Speed: #{@speed}"
	end

# Restore HP
	def restore(health)
		@hp += health
		if @hp > 100
			puts "Max health reached"
			@hp = 100
		end
		return @hp
	end

# Take damage
	def damage(damage)
		@hp -= damage
		if @hp <= 0
			@hp = 0
			puts "HP reached 0. #{@name} fainted."
		end
		return @hp
	end

	
end


# squirtle = Pokemon.new("Squirtle", 0001, "water", 100, 25, 50, 10)

# binding.pry
