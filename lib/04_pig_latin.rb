#def translate(string)
#	if ['a','e','i','o','u'].include?(string[0])
#		string + "ay"
#	elsif !['a','e','i','o','u'].include?(string[0] && string[1])
#		string[2..-1] + string[0..1] + "ay"
#	else
#		string[1..-1] + string[0] + "ay"
#	end
#end


def translate (string)
  array = string.split(" ")
  array.each do |word|
    result = ""
    until ['a','e','i','o','u'].include?(word[0]) do
      if (0 < word.length-1 && word[0]=='q' && word[1]=='u')
        result << word[0,2]
        word[0,2]=''
      else
        result << word[0]
        word[0] = ''
      end
    end
    word << result + "ay"
  end
  array.join(" ")
end