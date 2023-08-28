# frozen_string_literal: true

# Strings
greeting = 'Hello'
puts greeting.length
puts greeting[0]
puts greeting.include? 'llo'
puts greeting.include? 'z'
puts greeting[..3]
puts greeting[1, 3]
puts greeting[1..3] # Includes the last index
puts greeting[1...3] # Excludes the last index
puts greeting[-3..]

# Numbers
puts 10 / 3
puts 10 / 3.0
puts 10 / 3.0.floor
puts 10.divmod(3)

num = -3.80
puts num.abs
puts num.round

puts Math::PI
puts Math.sqrt(144)
puts Math.log(0)

# Inputs
puts 'Enter your name: '
# name = gets.chomp
name = 'Jean\n'
puts "Hello #{name}, how are you?"
puts "Hello #{name.chomp}, how are you?"
