def count_words(string)
	puts string
	string = string.downcase
	size = string.scan(/\w+/)
	result = Hash.new(0)
	size = size.each { |key| result[key] += 1 }
	puts result
end
count_words("'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1")
count_words "Doo bee doo bee doo"
