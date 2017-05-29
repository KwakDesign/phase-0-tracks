# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # take the string argument and split the string by space which will then turn it into an array of strings.
  # take the array of strings and add them into a hash as keys with a value of a default quantity set at 1.
  # print the list to the console [can you use one of your other methods here?]
# output: hash where the list items are the keys and the quantities are the values.
def create_a_list(list)
  this_list = {}
  list_array = list.split(' ')
  list_array.each do |item|
    this_list[item] = 1
  end
  this_list
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # take item name and optional quantity arguments and add them into the list hash.
# output: updated hash where the list items are the keys and the quantities are the values.
def add_item(list,item_name, qty)
  list[item_name] = qty
end

# Method to remove an item from the list
# input: list, item name
# steps:
  # use the delete method on the hash list and pass it the item name to remove.
  # then return the hash list
# output: updated hash where the list items are the keys and the quantities are the values.
def remove_item(list, item_name)
  list.delete(item_name)
  list
end

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps:
  # take item name and new quantity and add them to the list hash.
# output: updated hash where the list items are the keys and the quantities are the values.
def update_quantity(list, item_name, qty)
  list[item_name] = qty
end

# Method to print a list and make it look pretty
# input: list
# steps:
  # pass in the list hash to print.
  # '-' * 40
  # • 3 apple
  # '-' * 40
# output: updated hash where the list items are the keys and the quantities are the values.
def print_list(list)
  puts '-' * 40
  list.each do |item, qty|
    puts "• #{qty} #{item}"
  end
  puts '-' * 40
end

new_list = create_a_list('apple pear grapes orange')
add_item(new_list, "banana", 2)
remove_item(new_list, "pear")
update_quantity(new_list, "apple", 5)
print_list(new_list)

# qty, optional
# remove qty
# if qty == 0, then delete item
# what about space
# google ruby splat