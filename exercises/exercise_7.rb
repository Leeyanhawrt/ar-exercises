require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "What is your store name?"
answer = STDIN.gets.chomp()

store = Store.create(name: answer, annual_revenue: 1, mens_apparel: false, womens_apparel: false)
store.errors.full_messages.each do |err|
  puts err
end