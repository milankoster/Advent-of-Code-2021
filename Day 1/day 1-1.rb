file_data = File.read('input.txt').split.grep(/\d+/).map(&:to_i)

count = 0
previous = file_data[0]

file_data.drop(1).each do |x|
  count += 1 if x > previous
  previous = x
end

puts count
