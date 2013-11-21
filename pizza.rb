module Pizza
  class Pie
  	attr_reader :toppings, :delivery_time

  	def initialize(toppings=[Pizza::Topping.new('cheese', vegetarian: true)])
  		@toppings = toppings
      @delivery_time = Time.now+ 30*60
  	end

    def deliver!
      @delivery_time = deliver!
    end

    def late?
      Time.now > @delivery_time
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