require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts 'Exercise 5'
puts '----------'

# Your code goes here ...

total_revenue = Store.sum(:annual_revenue)
average_store_revenue = Store.average(:annual_revenue)
high_earners = Store.where('annual_revenue > ?', 1_000_000).size

puts total_revenue
puts '↑ Total Revenue'
puts average_store_revenue
puts '↑ Average Store Revenue'
puts high_earners
puts '↑ # of Stores w/ >$1M Revenue'

puts '----------'
