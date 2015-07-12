def echo(string)
	"#{string}"
end

def shout(string)
	"#{string}".upcase
end

def repeat(string, num = 2)
  ([string] * num).join(" ")
end

def start_of_word(string, num)
	string[0..num-1]
end

def first_word(string)
	arr = string.split(" ")
	arr[0]	
end

def titleize(string)
  arr = string.split(" ").each do |word| 
  	word.capitalize! unless (word == "and" || word == "the" || word == "over")
  end	
  arr[0].capitalize!
  return arr.join(" ")
end