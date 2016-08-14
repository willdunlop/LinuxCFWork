def add(a,b)
 ans = a.to_i + b.to_i
 puts "The result is: #{ans}"
  # put your code here
end

def subtract(a,b)
ans = a.to_i - b.to_i
 puts "The result is: #{ans}"
  # put your code here
end

def multiply(a,b)
ans = a.to_i * b.to_i
 puts "The result is: #{ans}"
  # put your code here
end

def divide(a,b)
ans = a.to_i / b.to_i
 puts "The result is: #{ans}"
  # put your code here
end
#######################################
puts "\e[31mWelcome to RubyCalc\e[0m"
print "Enter first number: "
a = gets.chomp
# enter your code here
print "Enter operation (+, -, *, /): "
# enter your code here
    op = gets.chomp
print "Enter second number: "
# enter your code here
  b = gets.chomp

  if op == "+"
    add(a,b)
  elsif op == "-"
    subtract(a,b)
  elsif op == "*"
      multiply(a,b)
  elsif op == "/"
        divide(a,b)
  else puts "Error"
end
# do calculation
