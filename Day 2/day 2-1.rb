file_data = File.read('input.txt').split("\n")

horizontal = 0
depth = 0

file_data.each do |i|
  # instruction = i.split(' ')
  # direction = instruction[0]
  # amount = Integer(instruction[1])
  direction, amount = i.split(' ')
  amount = amount.to_i

  case direction
  when 'forward'
    horizontal += amount
  when 'up'
    depth -= amount
  when 'down'
    depth += amount
  else
    raise Exception "unknown direction: #{direction}"
  end
end

puts "Product of #{horizontal * depth} from horizontal #{horizontal} and depth #{depth}"
