require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...


# create_table :employees do |table|
#   table.references :store
#   table.column :first_name, :string
#   table.column :last_name, :string
#   table.column :hourly_rate, :integer
#   table.timestamps null: false

class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Mark", last_name: "Knophler", hourly_rate: 590)
@store1.employees.create(first_name: "Bob", last_name: "White", hourly_rate: 20)
@store1.employees.create(first_name: "Joe", last_name: "Green", hourly_rate: 25)
@store1.employees.create(first_name: "Eddy", last_name: "Rock", hourly_rate: 22)

@store2.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Bill", last_name: "Gates", hourly_rate: 90)
@store2.employees.create(first_name: "Den", last_name: "Brown", hourly_rate: 50)
@store2.employees.create(first_name: "Eric", last_name: "Wise", hourly_rate: 40)