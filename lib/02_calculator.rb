def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(arr)
	if arr.empty?
		return 0
	else
		return arr.inject(:+)
	end
end


