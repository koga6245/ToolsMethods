class String

  def palindrome?

    tmp_str = self.downcase.gsub(/[^a-z]/,'')
   tmp_str.reverse == tmp_str

  end

end



module Enumerable
  def palindrome?

    self == self.reverse

  rescue NoMethodError

    self.to_a == self.to_a.reverse

  end

end

puts [1,2,3,2,1].palindrome?
puts [1,2,3,4,5].palindrome?
