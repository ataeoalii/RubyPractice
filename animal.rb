class Animal
	def initialize
		puts "create new animal"
	end

	# getter
	def name
		@name
	end

	# setter
	def name=(new_name)
		if new_name.is_a?(Numeric)
			puts "Name can't be a number"
		else
			@name = new_name
		end
	end
end

# reader/writer attributes
class Cat
	attr_reader :name, :height, :weight
	attr_writer :name, :height
end

# accessor = reader/writer
class Dog
	attr_accessor :name, :height, :weight

	def bark
		return "Generic bark"
	end
end

class GermanShepard < Dog
	def bark
		return "German Shephard Bark"
	end
end


rover = Dog.new
rover.name = "Rover"

puts rover.name
puts rover.bark
rover = GermanShepard.new
puts rover.bark

cat = Animal.new
cat.name = "jaja"

puts cat.name
