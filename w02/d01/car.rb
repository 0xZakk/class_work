require 'pry'
 
class Car

	attr_accessor :price
	attr_reader :price, :speed, :color
	# attr_writer :price

	# attr_reader :color
	# attr_writer :speed
 
	def initialize(initial_color)
		@speed = 0
		@color = initial_color
		@price = 20000
	end

	# def price
	# 	return @price
	# end

	# def price=(new_price)
	# 	@price = new_price
	# end

	# def speed()
 #  		return @speed
 #  	end

	def accelerate(ammount)
		@speed += ammount
		if @speed > 100
			@speed = 100
	end

	# 	return @speed
 # 	end

	# def color
	# 	return @color
	# end

	def repaint(new_color)
		colors = ["blue", "silver", "red"]

		if colors.include?(new_color)
			@color = new_color
		else
			puts "Not a valid color"
		end
	end


 
end
 
my_car = Car.new("red")
binding.pry




