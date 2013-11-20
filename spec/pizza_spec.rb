require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'

describe Pizza::Pie do

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