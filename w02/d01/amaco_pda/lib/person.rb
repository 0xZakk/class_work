class Person
	attr_accessor :name, :age, :occupation, :favorite_food

	def initialize(name, age, occupation, favorite_food)
		@name = name
		@age = age
		@occupation = occupation
		@favorite_food = favorite_food
	end

	def menu_info

		return "
		(Name          : #{name})
		(Age           : #{age})
		(Occupation    : #{occupation})
		(Favorite Food : #{favorite_food})"
	end

end















