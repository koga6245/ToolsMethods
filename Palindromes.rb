def palindrome?(word)
	word = word.downcase.scan(/\w/)
	puts word == word.reverse
    end
palindrome?("A man, a plan, a canal -- Panama")
