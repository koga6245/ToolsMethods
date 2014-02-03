class glob match
    
     def glob_match(filenames,pattern)
	
      pat = pattern.gsub(/[A-z]/){|c| '('+c+')'}
      pat.gsub!(/[*]/, '*' => '.*')
      
      stuff = []
      filenames.each{|fname.match(pat){|mat| stuff<<mat[0]}}
      return stuff
      end
      
     print glo_match(['part2.rb','part2.rb~', 'part3.rb.un~', 'have.fun','yaar.rb~], '*part*rb?*')
     
     
 # convert to regular expression: each character match with pat and if not match take it and return it to stuuf#
