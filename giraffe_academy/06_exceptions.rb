begin
    num = 10/0
rescue => exception
    puts "Error: #{exception}"
end

begin
    num = 10/0
rescue ZeroDivisionError => e
    puts "Zero Division Error: #{e}"
rescue
    puts "Some other error"
end

begin
    raise TypeError, "You messed up"
rescue StandardError => exception
    puts "Error: #{exception}"
end
