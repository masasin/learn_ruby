# Printing
puts "Hello"  # With a new line
print "World"  # Without a new line
puts "!"

# String interpolation
name = "Jean"
puts "Hello #{name}, how are you?"

# Casting
puts "A" + 1.to_s
puts 3.14.to_i
puts "3.0".to_f

# Methods
def add_numbers(num1, num2=99)
    return num1 + num2
end
p add_numbers(4, 3)
p add_numbers(1)

# Bonus p
def square(x)
    x * x
end

def double(x)
x * 2
end

value = 5
result = p(square(value)).times.map { |i| double(i) }
p result
