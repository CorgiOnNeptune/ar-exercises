require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts 'Exercise 6'
puts '----------'

# Your code goes here ...
@store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 60)
@store1.employees.create(first_name: 'Brad', last_name: 'Dourif', hourly_rate: 45)
@store1.employees.create(first_name: 'Jennifer', last_name: 'Tilly', hourly_rate: 50)
@store2.employees.create(first_name: 'Susie', last_name: 'Bannion', hourly_rate: 80)
@store2.employees.create(first_name: 'Sally', last_name: 'Hardesty', hourly_rate: 74)
@store2.employees.create(first_name: 'Helen', last_name: 'Lyle', hourly_rate: 55)

puts '----------'
