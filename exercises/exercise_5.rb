require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total_revenue = Store.sum("annual_revenue")
average_revenue = total_revenue / Store.count
cash_cows = Store.where("annual_revenue > ?", 1000000).count

puts "Total Revenue: #{total_revenue}"
puts "Average Revenue: #{average_revenue}"
puts "Number of Cash Cows: #{cash_cows}"
