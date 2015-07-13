def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(arr)
	if arr.empty?
		0
	else
		arr.inject(:+)
	end
end

def multiply(*num)
	result = 1
	num.each { |x| result *= x }
	result
end

def power(x,y)
	x**y
end

def factorial(num)
	if num <= 1 
		return 1
	end

	result = 1
	while num > 0
		result *= num
		num -= 1
	end
	return result
end