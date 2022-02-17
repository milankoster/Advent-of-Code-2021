file_data = File.read('input.txt').split("\n")

one_counter = Array.new(file_data[0].length, 0)

file_data.each do |line|
  line.each_char.with_index do |char, index|
    one_counter[index] += 1 if char == '1'
  end
end

gamma = ''

one_counter.each do |one_count|
  gamma += if one_count > file_data.length / 2
             '1'
           else
             '0'
           end
end

puts gamma
puts delta = gamma.gsub('1', 't').gsub('0', '1').gsub('t', '0')

puts gamma_num = gamma.to_i(2)
puts delta_num = delta.to_i(2)

puts gamma_num * delta_num
