# frozen_string_literal: true

# Arrays
numbers = [0, 1, 2, 3, 4, 5]
p numbers
p numbers[2..4]
p numbers.length

number_grid = [[1, 2], [3, 4]]
p number_grid
number_grid[0][1] = 99
p number_grid
puts number_grid[0][1]
p "number_grid=#{number_grid}"

numbers = []
numbers.push(1)
numbers.push(2)
numbers.push(3)
numbers.push(4, 5)
numbers.push([6, 7])
p numbers
numbers.pop(2)
p numbers
p numbers.reverse
p numbers.reverse.sort
p numbers.sort.reverse
p numbers.include? 3
p numbers.include? 99
p numbers.sum
p numbers.max
