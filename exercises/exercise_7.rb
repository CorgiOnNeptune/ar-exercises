require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts 'Exercise 7'
puts '----------'

# Your code goes here ...

puts 'Please enter a store name'
print '> '

given_name = gets.chomp

new_store = Store.create(name: given_name)

puts '--↓ Error creating store ↓--' if new_store.errors.any?
puts new_store.errors.full_messages

puts '----------'
