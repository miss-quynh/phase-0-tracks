# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create a new hash
  # set default quantity to zero
  # turn string into an array
  # iterate through each item in the array to be included as keys in the hash.
  # print the list to the console [can you use one of your other methods here?]
# output: hash with items as the key, quantity as the value.

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: iterate through the hash to add an item into the hash
# output: original hash with items as the key, quantity as the value as well as the new item recently added

# Method to remove an item from the list
# input: key and the hash
# steps: remove an item a key from the updated 'new_list' hash
# output: updated hash with items as key, quantity as the value but the removed item will not be included in the new hash

# Method to update the quantity of an item
# input: key and value of the hash
# steps: assign a new value (or quantity) to the key
# output: print new hash with items as key but with different quantity as the value

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through the hash to print the key: value in that format using string interpolation.
# output: nil.

def create_list(grocery_string)
    grocery_list = Hash.new
    grocery_items = grocery_string.split(" ")
    grocery_items.each do |item|
        grocery_list[item] = 0
    end
    grocery_list
    print_hash(grocery_list)
end

def print_hash(grocery_list)
    grocery_list.each do |item, quantity|
        puts "#{item}: #{quantity}"
    end
    grocery_list
end

def add_item_to_list(grocery_list, item, quantity=1)
  grocery_list.store(item, quantity)
  grocery_list
end

def remove_item_from_list(grocery_list, item)
  grocery_list.delete(item)
  grocery_list
end

def update_quantity_of_item(grocery_list, item, quantity)
  grocery_list[item] = quantity
  grocery_list
end



new_list = create_list("carrots apples cereal pizza")

p new_list

new_list = add_item_to_list(new_list, "broccoli", 0)

p new_list

new_list = remove_item_from_list(new_list, "carrots")

p new_list

p update_quantity_of_item(new_list, "broccoli", 1)



create_new_list = create_list("bagel")

create_new_list = add_item_to_list(create_new_list, "lemonade", 2)

create_new_list = add_item_to_list(create_new_list, "tomatoes", 3)

create_new_list = add_item_to_list(create_new_list, "onions", 1)

create_new_list = add_item_to_list(create_new_list, "ice cream", 4)

create_new_list = remove_item_from_list(create_new_list, "bagel")

p create_new_list

create_new_list = remove_item_from_list(create_new_list, "lemonade")

p create_new_list

create_new_list = update_quantity_of_item(create_new_list, "ice cream", 1)

p create_new_list

