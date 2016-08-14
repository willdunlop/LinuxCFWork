puts "What file are you reading today?"
filename = gets.chomp

txt = open(filename, 'a+')

puts "You have opened #{filename}"
puts "-" * 15
puts txt.read

puts "-" *15
puts "Add more text"
moretext = gets.chomp

txt.write(moretext)
txt.write("\n")
txt.rewind
puts "-" * 15
print txt.read
txt.close
