# Part1: Hello World
class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end
hello = HelloWorldClass.new("JP")
hello.sayHi




def palindrome?(word)
	word = word.downcase.scan(/\w/)
	puts word == word.reverse
    end
palindrome?("A man, a plan, a canal -- Panama")

