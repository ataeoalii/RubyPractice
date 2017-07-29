module ApplicationHelper
	def get_season()
		time = Time.new
		if(time.month >= 3) && (time.month <= 5)
			"It's Spring"
		elsif(time.month >= 5) && (time.month <= 8)
			"It's Summer"
		elsif(time.month >= 8) && (time.month <= 10)
			"It's Fall"
		else
			"It's Winter"
		end
	end

	def get_random_welcome()
		opening = ["What a beautiful day.", "Welcome to our site.", "Thank you for stopping by."]
		middle = ["We hope you find what you need.", "We have a wide selection.", "Check out our sale items."]
		ending = ["Have a great day!", "See you next time!", "Come back soon!"]

		"#{opening[rand(3)]} #{middle[rand(3)]} #{ending[rand(3)]}"
	end

	def count_to_10
		x = 2
		number_list = "1"

		loop do
			number_list = number_list + ", " + x.to_s
			x+=1
			break if x > 10
		end
		"#{number_list}"
	end
end
