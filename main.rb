require_relative 'LinkedList.rb'
# Just a bunch of tests.
# The actual code for linked lists is in the LinkedList.rb file
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

puts "\nWhat node is at index 2 (should be luna)"
p names.at(2)

puts "\nWhat node is at index 6 (should be Racoon)"
p names.at(6)

puts "\nWhat node is at index 0 (should be Oppossum)"
p names.at(0)

puts "\nWhat node is at index 1 (should be Vulpes)"
p names.at(1)

puts "\nWhat node is at index 9 (should be nil)"
p names.at(9)

puts "\nPop executed, should return (Racoon)"
puts names.pop.data

puts "\nThe list is now:"
names.to_s

puts "\nPop executed, should return (Dog)"
puts names.pop.data

puts "\nThe list is now:"
names.to_s

puts "\nFinding Luna (index 2)"
puts names.find("Luna")

puts "\nFinding Cat (index 4)"
puts names.find("Cat")

puts "\nFinding Dog (index -1)"
puts names.find("Dog")
# Empty List series of tests
puts"\nThe following are test for an empty list:"
empty_list = LinkedList.new
puts "empty List:"
empty_list.to_s

puts "\nSize:"
puts empty_list.size

puts "\nAt(3)"
val = empty_list.at(3)
p val

puts "\npop:"
p empty_list.pop

puts "\nContains?('Luna')"
p empty_list.contains?('Luna')

puts "\nFind('Richard'):"
puts empty_list.find("Richard")

puts "\nBack to names list:"

puts "\nThis is the current list"
names.to_s

puts "\nThis is after inserting Hyena in index 2"
names.insert_at("Hyena", 2)
names.to_s

puts "\nThis is after inserting Eagle in index 4"
names.insert_at("Eagle", 4)
names.to_s

puts "\nThis is after inserting Tlachuache in index 10"
names.insert_at("Tlachahue", 10)
names.to_s

puts "\nThis is after inserting Parrot in index 0"
names.insert_at("Parrot", 0)
names.to_s

puts "\nThis is after inserting Lion in index 1"
names.insert_at("Lion", 1)
names.to_s