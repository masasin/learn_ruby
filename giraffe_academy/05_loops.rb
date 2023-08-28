# frozen_string_literal: true

index = 1
while index <= 5
  puts index
  index += 1
end

1..5.each do |idx|
  puts idx
end

1...5.each do |idx|
  puts idx
end

lost_numbers.each do |num|
  puts num
end
