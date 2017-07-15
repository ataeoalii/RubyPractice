
def addNumDialog()
	print "Enter a value: "
	first_num = gets.to_i
	print "Enter another value: "
	second_num = gets.to_i
	puts first_num.to_s + " + " + second_num.to_s + " = " + (first_num + second_num).to_s
end

def floats()
	num_flt = 1.000
	num_two = 0.99
	puts num_flt + num_two
end

# const is upper case
A_CONST = 423.24

def read_write_file()
	write_handler = File.new("test.out", "w")
	write_handler.puts("Random Text").to_s

	data_from_file = File.read("test.out")
	puts "Data: " + data_from_file
end

=begin
	Block comment
=end
age = 12
if (age >= 5) && (age <= 6)
	puts "You're in Kindergarten"
elsif (age >= 7) && (age <= 13)
	puts "You're in Middle School"
else
	puts "Stay Home"
end

unless age > 4
	puts "Go back to schoo"
else
	puts "No need go"
end

# loop loop
x = 1
loop do
	x += 1
	next unless (x%2) == 0
	puts x
	break if x>= 10
end

#while loop
y=1
while y< 10
	y+=1
	puts y
end

#until loop
a = 1
until a >= 10
	a+=1
	next unless (a % 2) == 0
	puts a
end

#for loop
numbers = [11,"hello",13,14,15]
for number in numbers
	puts "#{number},"
end

# each loop
numbers.each do |num|
	puts "num #{num}"
end

def add_nums(num1, num2)
	return num1 + num2
end

puts add_nums 13, 14

# passed by value
x = "abcase"

def change_x(x)
	x = 4
end

puts x

first_num = 34
second_num = 0

# try/catch
begin
	answer = first_num/second_num
	puts "Div #{answer}"
rescue
	puts "you can't divide by zero"
end

age = 12

# raise an error
def check_age(age)
	raise ArgumentError, "Enter a positive number" unless age >= 0
end

check_age(0)

# use double quotes for strings

# single quotes, escape characters/interpolation does not work
multiline_string = <<EOM
This is a long
string that lasts
multiple lines
EOM

first = "Andrew"
last = "Taeoalii"
full = first + " " + last
puts full

puts full.include?("Andrew")
puts full.size

puts "Vowels : " + full.count("AEIOUaeiou").to_s

puts full.upcase
puts full.downcase
puts full.swapcase
puts full.lstrip
puts full.rstrip
puts full.strip
puts full.center(20, '.')
puts full.chomp('ii')
puts full.delete("drew")


greeting = "English"
case greeting
when "French"
	puts "Bonjour"
	exit
else
	puts "Default"
end
