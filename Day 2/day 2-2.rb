file_data = File.read('input.txt').split("\n")

horizontal = 0
depth = 0
aim = 0

file_data.each do |i|
  instruction = i.split(' ')
  direction = instruction[0]
  amount = Integer(instruction[1])

  case direction
  when 'forward'
    horizontal += amount
    depth += amount * aim
  when 'up'
    aim -= amount
  when 'down'
    aim += amount
  else
    raise Exception "unknown direction: #{direction}"
  end
end

puts "Product of #{horizontal * depth} from horizontal #{horizontal} and depth #{depth}"
