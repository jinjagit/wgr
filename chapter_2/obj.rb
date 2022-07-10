# frozen_string_literal: true

obj = Object.new

def obj.talk
  puts "Hi! I'm an object!"
end

obj.talk

puts obj.methods.sort

puts obj.object_id
puts obj.respond_to?('clone')

puts 100.object_id
a = 100
b = a
puts a.object_id
puts b.object_id

# The book says these strings should have different object IDs, but they don't!
puts 'hello'.object_id
str1 = 'hello'
str2 = 'hello'
puts str1.object_id
puts str2.object_id
