require './initializer'

mother_board = Component.new(
  {
    type:  "Mother board",
    name:  "Asus 34SSd34",
    price: 123.34
  }
)

cpu = Component.new(
  {
    type:  "Processor",
    name:  "Intel Xeon 3455",
    price: 220,
    unit:  "GHz",
    power: 2.3
  }
)

memory = Component.new(
  {
    type:  "Memory",
    name:  "Kingston 1212",
    price: 100,
    unit:  "GB",
    power: 16
  }
)

video = Component.new(
  {
    type:  "Grafic processor",
    name:  "ATI Radeon 4443",
    price: 532.34,
    unit:  "GB",
    power: 2
  }
)

# The main programm

pc = Computer.new(mother_board, cpu, memory, video)

pc.ip_address

# Use EACH method
pc.each { |c| p c.type }

pc.each { |c| p c.name }

arr = []
pc.each { |c| p arr << c.type }
p arr
pc.each_in_arr { |c| c.name }

total_price_each = 0
pc.each { |c| total_price_each += c.price }
p "New price #{total_price_each}"

# Use INJECT method
total_price = pc.inject { |sum, component| sum + component.price }
p total_price

# Use MAP method
pc.map { |c| c.name }
pc.map { |c| c.type }
pc.map { |c| { c.type => c.name } }
pc.map { |c| { c.unit => c.power } }

######################## HOMETASK ########################
# 1. Implement map method for computer
# 2. Using map mathod get an array of component names
# 3. Using map mathod get an array of component types
# 4. Using map mathod get an array of hashes {type: name}
# 5. Using map mathod get an array of hashes {unit: power}
# 6. Do 2-5 tasks using only each method
# 7. Add aditional attribute (ip_address) to Computer, to generate IP you could use Faker gem.
