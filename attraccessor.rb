class Class

  def attr_accessor_with_history(attr_name)

    attr_name = attr_name.to_s   # make sure it's a string

    attr_accessor attr_name

    attr_accessor attr_name+"_history"

    #class_eval "your code here, use %Q for multiline strings"

    class_eval %Q{



      def #{attr_name}=(value)

        @#{attr_name}_history ||= [nil]

        @#{attr_name}_history << value

        @#{attr_name} = value

      end



      def #{attr_name}_history

        @#{attr_name}_history

      end

    }

  end

end



class Foo

  attr_accessor_with_history :foo

  attr_accessor_with_history :bar

end

 # this for check your code can print you the new value after check the history. this case will be [4]

f = Foo.new
f.bar = 1
f.bar = 2
f.bar = 3
f.bar = 4
print f.bar_history
print f.bar
gets
