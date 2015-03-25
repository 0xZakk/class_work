array_of_names = ["bob", "tom", "adam", "matt", "andy", "suzy", "pam", "tess", "ashley"]

# for name in array_of_names
# 	i = 0
# 	while i <= array_of_names.length
# 		puts array_of_names[i].capitalize
# 		i += 1
# 	end
# end

# using each

capizalized_array_of_names = []
array_of_names.each do |name|
	capizalized_array_of_names << name.capitalize
end

puts capizalized_array_of_names



#using map

# capizalized_array_of_names = array_of_names.map do |name|
# 	name.capitalize
# end

# puts capizalized_array_of_names


#
# using the curly braces and a single line of code
# 










