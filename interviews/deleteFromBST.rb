#
# Definition for binary tree:
# class Tree
#   attr_accessor :value, :left, :right
#   def initialize(val)
#     @value = val
#     @left = nil
#     @right = nil
# end
def deleteFromBST(t, queries)

queries.each do |q|
	t = deleteSingleQuery(t, nil, q)
end
return t
end

def deleteSingleQuery(t, p, isLeft, query)
	if t.value == query
		# single child
		if t.left != nil && t.right == nil
			if p == nil
				return t.left
			elsif isLeft
				p.left = t.left
			else
				p.right = t.left
			end
			return t
		elsif t.left == nil && t.right != nil
			if p == nil
				return t.right
			elsif isLeft
				p.left = t.right
			else
				p.right = t.right
			end
			return t
		
		# no child
		elsif t.left == nil && t.right == nil
			if isLeft
				p.left = nil
			else
				p.right = nil
			end
			return t
	elsif t.value > query
		if t.left != nil
			deleteSingleQuery(t.left, query)
		end
	elsif t.right != nil
		deleteSingleQuery(t.right, query)
	end
end

def swapNodesDelete(t1, t2, p2)
	t1.value = t2.value
	p2.right = nil
end

def getRightMostNode(t, p)
	if t.right == nil
		return t, p
	else
		return getRightMostNode(t.right, t)
	end
end
