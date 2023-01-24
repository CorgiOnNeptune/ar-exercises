require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts 'Exercise 4'
puts '----------'

# Your code goes below here ...
surrey = Store.create(
  name: 'Surrey',
  annual_revenue: 224_000,
  mens_apparel: false,
  womens_apparel: true
)

whistler = Store.create(
  name: 'Whistler',
  annual_revenue: 1_900_000,
  mens_apparel: true,
  womens_apparel: false
)

yaletown = Store.create(
  name: 'Yaletown',
  annual_revenue: 430_000,
  mens_apparel: true,
  womens_apparel: true
)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "Name: #{store.name} | Annual Rev: #{store.annual_revenue}"
end
puts "↑ Men's Stores"

@womens_stores = Store.where(womens_apparel: true) && Store.where('annual_revenue < ?', 1_000_000)

@womens_stores.each do |store|
  puts "Name: #{store.name} | Annual Rev: #{store.annual_revenue}"
end
puts "↑ Women's Stores w/ <$1M revenue"

puts Store.count
puts '↑ Total Stores'
puts '----------'
