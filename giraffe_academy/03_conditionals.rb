is_student = true
is_smart = false

if is_student and is_smart
  puts "You are a smart student"
elsif is_student and !is_smart
  puts "You are not a smart student"
else
  puts "You are not a student"
end

# Switch case
grade = "C"
case grade
    when "A"
        puts "You are a genius"
    when "B"
        puts "You are a good student"
    else
        puts "You need to work harder"
end