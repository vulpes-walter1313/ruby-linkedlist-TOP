require_relative 'LinkedList.rb'
# Just a bunch of tests.
# The actual code for linked lists is in the LinkedList.rb file
empty_list = LinkedList.new
puts"empty List:"
empty_list.to_s
names = LinkedList.new
names.prepend("Cat")
names.prepend("Jen")
names.prepend("Luna")

puts "Prepended"
names.to_s
puts "\nSize:"
names.to_s
puts "#{names.size}"

names.append("Dog")
names.prepend("Vulpes")
names.append("Racoon")
names.prepend("Opossum")
puts "\nAppended"
names.to_s

puts "\nSize:"
names.to_s
puts "#{names.size}"

puts "\nHead:"
p names.head

puts "\nTail:"
p names.tail

puts "\nIs Lune in there?"
puts names.contains? "Lune"
puts "\nIs Luna in there?"
puts names.contains? "Luna"
puts "\nIs Cat in there?"
puts names.contains? "Cat"
puts "\nIs David in there?"
puts names.contains? "David"
puts "\nIs Jen in there?"
puts names.contains? "Jen"

puts "\nto_s method"
names.to_s