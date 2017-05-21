# Array Drills
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
zombie_apocalypse_supplies.each do |supply|
  if supply == 'batteries'
    print supply + ""
    # exclude the asterisk after 'batteries' which is the last item in the array.
  else
    print supply + " * "
    # print items in the array separated by an asterisk, include space in between so it can be more readable.
  end
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
def alpha_bubble_sort(arr)
  swapped = true
  while swapped do
    index = 0
    swapped = false
    while index < arr.length - 1
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        swapped = true
      end
     index += 1
    end
  end
  return arr
end
puts alpha_bubble_sort(zombie_apocalypse_supplies)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
def find_item(str, arr)
  index = 0
  while index < arr.length
    if str == arr[index]
      arr[index]
      break
    end
    index += 1
  end
  arr[index]
end
p find_item("boots", zombie_apocalypse_supplies)

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
def only_five(arr)
  index = 0
  new_arr = []
  until index == 5
    new_arr << arr[index]
    index += 1
  end
  new_arr
end
puts only_five(zombie_apocalypse_supplies)

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
combined_supplies = other_survivor_supplies + zombie_apocalypse_supplies
combined_supplies.uniq

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
extinct_animals.each do |animal, year|
  if year.to_s == "1923"
    print animal + "-" + year.to_s + ""
    # exclude the asterisk after '1923' which is the value in the hash.
  else
    print animal + "-" + year.to_s + " * "
  end
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
def before_2000(hash)
  updated_hash = {}
  hash.each do |animal, year|
    if year < 1999
      updated_hash[animal] = year
    end
  end
  updated_hash
end
puts before_2000(extinct_animals)

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
extinct_animals.each do |animal, year|
  year - 3
  puts animal + " " + (year - 3).to_s
end

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
def might_be_extinct(hash, string)
  is_It = "This animal is NOT extinct."
  hash.each do |animal, year|
    if string == animal
      is_It = "This animal is extinct..."
    end
  end
  is_It
end
puts might_be_extinct(extinct_animals, "Andean Cat")
puts might_be_extinct(extinct_animals, "Dodo")
puts might_be_extinct(extinct_animals, "Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
p extinct_animals.assoc("Passenger Pigeon")