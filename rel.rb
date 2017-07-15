require_relative "human"
require_relative "smart"

class Scientist
	include Human
	prepend Smart

	def act_smart
		return "hum"
	end
end

einstein = Scientist.new
einstein.name = "Albert"
puts einstein.name
puts einstein.act_smart
