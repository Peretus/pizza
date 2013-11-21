require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'timecop'
require_relative '../pizza'

describe Pizza::Pie do

	before do
		Timecop.freeze(Time.now)
	end

	after do
		Timecop.return
	end


	describe '.initialize' do
		it 'records all of the toppings' do
			toppings = [
				Pizza::Topping.new('mushrooms', vegetarian: true),
				Pizza::Topping.new('pepperoni')
			]
			pizza = Pizza::Pie.new(toppings)

			expect(pizza.toppings).to eq(toppings)
		end

		it 'defaults to cheese if pizza has no toppings' do
			pizza = Pizza::Pie.new

			expect(pizza.toppings.size).to eq(1)
			expect(pizza.toppings.first.name).to eq('cheese')
		end

		it 'sets the time after which the pizza will be late' do
			pizza = Pizza::Pie.new

			expect(pizza.delivery_time).to eql(Time.now+(30*60))
		end

		it "should be late if the pizza is more than 30 mins late" do
			pizza = Pizza::Pie.new

			Timecop.travel(30*70)

			expect(pizza.late?).to be_true

			Timecop.return

		end

		it "should be on time if the pizza is less than 30 mins" do
			pizza = Pizza::Pie.new
			

			expect(pizza.late?).to be_false


		end
	end
end 

describe Pizza::Topping do
	describe '.initialize' do
		it "sets the name of the topping" do
			topping = Pizza::Topping.new("olives")
			
			expect(topping.name).to eql "olives"

		end

		it "sets whether or not topping is vegetarian" do
			topping = Pizza::Topping.new("olives",vegetarian: true)

			expect(topping.vegetarian).to eql(true)
		end

	end

end