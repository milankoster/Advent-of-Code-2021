file_data = File.read('input.txt').split.grep(/\d+/).map(&:to_i)


def get_sum(array, start, length)
  array[start, length].sum
end

count = 0
previous_sum = get_sum(file_data, 0, 3)

(1...file_data.length - 2).each do |i|
  new_sum = get_sum(file_data, i, 3)
  count += 1 if  new_sum > previous_sum
  previous_sum = new_sum

end

puts count

