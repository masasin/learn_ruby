index = 1
while index <= 5
  puts index
  index += 1
end

for index in 1..5
  puts index
end

for index in 1...5
  puts index
end

lost_numbers = [4, 8, 15, 16, 23, 42]
for number in lost_numbers
  puts number
end

for index in 0...lost_numbers.length
  puts lost_numbers[index]
end

lost_numbers.each do |number|
  puts number
end
