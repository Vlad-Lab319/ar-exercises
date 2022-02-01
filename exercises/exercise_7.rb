require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store, absence: false
end

class Store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :has_collection

  def has_collection
    if !mens_apparel && !womens_apparel 
      errors.add(:collection, "Add at least one collection ") 
    end
  end
end

puts "Enter a store name: "
store_name = gets.chomp
new_store = Store.create(name: store_name)

puts "Error creating '#{store_name}' because"
  new_store.errors.each{ |error, message|
    puts "#{error} #{message}"
  }