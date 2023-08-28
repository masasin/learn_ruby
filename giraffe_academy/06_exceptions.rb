# frozen_string_literal: true

begin
  10 / 0
rescue ZeroDivisionError => e
  puts "Error: #{e}"
end

begin
  10 / 0
rescue ZeroDivisionError => e
  puts "Zero Division Error: #{e}"
rescue StandardError
  puts 'Some other error'
end

begin
  raise TypeError, 'You messed up'
rescue StandardError => e
  puts "Error: #{e}"
end
