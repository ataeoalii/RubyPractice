num_hash = { "PI" => 3.14, "Golden" => 1.618, "e" => 2.718}

puts num_hash["PI"]
num_hash["new"] = "braddah"
puts num_hash["new"]

# update, destructive merge
# merge, nondestructive keep all key values

num_hash.each do |x|
	puts x
end

# has_key, has_value, delete, size, empty?

class Menu
	include Enumerable

	def each
		yield "Pizza"
		yield "Spaghetti"
		yield "Salad"
		yield "Water"
		yield "Bread"
	end
end

menu = Menu.new

menu.each do |item|
	puts "Would you like #{item}"
end

#reject, take, drop, min, max, sort, reverse_each
p menu.find{|item| item = "pizza"}
p menu.select {|item| item.size <= 5}

