require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@Store3 = Store.find(3).destroy

puts "Number of stores: #{Store.count}"
