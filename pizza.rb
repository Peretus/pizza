module Pizza
  class Pie
  	attr_reader :toppings
  	
  	def initialize(toppings)
  		@toppings = toppings 
  	end

  end

  class Topping
  	attr_reader :name, :vegetarian

  	def initialize(name, vegetarian: false)
  		@name = name
  		@vegetarian = vegetarian
  	end

  end
end