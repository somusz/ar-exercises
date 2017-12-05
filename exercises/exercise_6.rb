require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0, message: "You need to specify the revenue"}
end

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 200, message: "Integer between 10 and 200" }
  validates_associated :store
end

@store1.employees.create(first_name: "Abigel", last_name: "Amari", hourly_rate: 10)
@store1.employees.create(first_name: "Bob", last_name: "Big", hourly_rate: 20)
@store2.employees.create(first_name: "Cecil", last_name: "Check", hourly_rate: 25)
@store2.employees.create(first_name: "Dan", last_name: "Dimitri", hourly_rate: 25)
@store2.employees.create(first_name: "Esther", last_name: "Eiffel", hourly_rate: 54)
@store2.employees.create(first_name: "Francis", last_name: "Fritz", hourly_rate: 45)
@store1.employees.create(first_name: "Geoff", last_name: "Gintonic", hourly_rate: 74)
@store1.employees.create(first_name: "Homer", last_name: "Halpert", hourly_rate: 35)
@store1.employees.create(first_name: "Ingrid", last_name: "Ivanovic", hourly_rate: 23)
@store2.employees.create(first_name: "Jane", last_name: "Jameson", hourly_rate: 6)
@store1.employees.create(first_name: "Kate", last_name: "Kovac", hourly_rate: 16)
@store1.employees.create(first_name: "Leo", last_name: "Lol", hourly_rate: 61)
@store1.employees.create(first_name: "Manfred", last_name: "Money", hourly_rate: 63)
@store2.employees.create(first_name: "Nigel", last_name: "Nickel", hourly_rate: 24)
@store2.employees.create(first_name: "Oprah", last_name: "Oxnard", hourly_rate: 42)
@store2.employees.create(first_name: "Pete", last_name: "Punch", hourly_rate: 33)
