puts "What file are you reading today?"
filename = gets.chomp

txt = File.open(filename)

puts "You have opened #{filename}"
puts "-" * 15
print txt.read 
