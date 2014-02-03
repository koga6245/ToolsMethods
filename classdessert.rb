class Dessert

  

  attr_accessor :name, :calories


 def initialize(name, calories)

    @name = name

    @calories = calories

  end

  

  def healthy?

    @calories < 200

  end

  

  def name(name)

    @name = name

  end

  

  def name

    return @name

  end



  def delicious?

    return true

  end

end



class JellyBean < Dessert

  

  attr_accessor :flavor



  def initialize(name, calories, flavor)

    @name = name

    @calories = calories

    @flavor = flavor

  end
 

  def delicious?

    if @flavor.downcase == "black licorice"

      return false

    else

      return true

    end

  end



end

strawberry = Dessert.new("Jambon",1978)

puts strawberry.healthy?
puts strawberry.delicious?
strawberry.name = "Jambon"
puts strawberry.name

BL = JellyBean.new("Black", 15, "Black Licorice")
Jam = JellyBean.new("Red", 15, "Jambon")
Suc = JellyBean.new("white", 15, "Sucre")

puts BL.delicious?
puts Jam.delicious?
puts Suc.delicious?
puts BL.name
puts BL.healthy?
