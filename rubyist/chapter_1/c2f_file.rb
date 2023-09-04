puts 'Reading Celsius temperature value from data file...'
num = File.read("#{File.dirname(__FILE__)}/temp.in")
celsius = num.to_f
fahrenheit = (celsius * 9 / 5) + 32
puts "The result is: #{fahrenheit} F."
puts "Saving result to output file 'temp.out'"
File.open("#{File.dirname(__FILE__)}/temp.out", 'w') do |file|
  file.write fahrenheit
end
