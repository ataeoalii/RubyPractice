#
# Definition for binary tree:
# class Tree
#   attr_accessor :value, :left, :right
#   def initialize(val)
#     @value = val
#     @left = nil
#     @right = nil
# end
def hasPathWithGivenSum(t, s)
	if t == nil
		return s==0
	end
	return traverseTree(t, s, 0)
end

def traverseTree(t, s, curr)
	if t.left == nil && t.right == nil
		return curr + t.value == s
	elsif t.left == nil
		return traverseTree(t.right, s, curr + t.value)
	elsif t.right == nil
		return traverseTree(t.left, s, curr+t.value)
	else
		return traverseTree(t.right, s, curr + t.value) || traverseTree(t.left, s, curr+t.value)
	end
end