require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
# require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Your code goes here ...

class Employee
  # before_create :set_password 
  before_save :set_password
  # after_create :set_password 

  private
    def set_password
      self.password = 'password1'
    end

    # def set_password
    #   self.update(password: 'password2')
    # end

end

@store1.employees.create(first_name: "Mike", last_name: "Tyson", hourly_rate: 15)
mike = Employee.find_by(first_name: "Mike")
puts mike.password
