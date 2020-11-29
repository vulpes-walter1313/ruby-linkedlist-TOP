# ruby-linkedlist-TOP
My attempt at the linked list data structure project from The Odin Project

## Prepend Method
The prepend method takes in a value you wish to store in the list, and it will:

1. Create a new Node and store the value into the data variable of that node.
2. Put in the node at beggining of the list.
3. That node will become the `@head` of the list.
4. That node's `@next` variable will assigned to the last `@head` node.

## append Method
The append method takes in a value you wish to store in the list, and it will:

1. Create a new Node and store the value into the data variable of that node.
2. Put in that node to the end of the list.
3. That node will become the `@tail` of the list

## Size Method
The size method will loop through the List and count the number of non-nil `@data` variables of each node. It returns the value of `size` which is an integer.

## Contains Method
The contains method returns a boolean of true or false if the `value` argument is found in one of the `@data` Variables in any node in the list. The method loops through all nodes and changes a flag from false to true if any `@data` is `==` to `value`.

## to_s method
This method loops through the list and prints a string that visualizes the list in a format like that below:

```Text
( value1 ) -> ( value2 ) -> ( value3 ) -> nil

or

nil
```

If there is no items in the list it will simply print `nil`

## at(index) Method
This method returns the node in that index value. if you wish to print the data inside it must be called like so:

```Ruby
names = LinkedList.new
names.append "John Doe"
names.append "Jane Doe"
puts names.at(0).data # outputs: John Doe
```

## find(value)
This method simply returns the index number of the first instance where a node has `@data == value`.

## insert_at(value, index)
This method inserts a new node with `value` as the `@data` into the `index` of the list. This has two distinct conditions however.

1. If `index == 0` then the new node is `self.prepend(value)`
2. If `index >= self.size` then the new node is `self.append(value)`