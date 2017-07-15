#symbols are immutable strings
:andrew

puts :andrew.class
puts :andrew.to_s.class

arr = Array.new
arr1 = Array.new(5)
arr2 = Array.new(5, "empty")
arr3 = [1,5,3,1.5, "hello"]

puts arr
puts arr1
puts arr2
puts arr3
puts arr3[2,2].join(", ")
print arr2
puts
# shift/unshift add or remove values to beginning
# push/pop to modify end of array
# concat
# size