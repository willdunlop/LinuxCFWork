 puts "Menu"
 puts "Exit [1]\nPoem [2]"
 command = gets.chomp.to_i

 #### IF STATEMENT ####
# if command == 1
#   exit = true
# elsif command == 2
#   puts "-"*15
#   puts "sdoin"
# else
#   puts "wrong command"
#
# end


#### CASE SWITCH STATEMENT ####

# case command
# when 1
#   exit
# when 2
#   puts "-"*15
#   puts "sdoin"
# else
#   puts "wrong"
# end


##### WHILE/UNTIL STATEMENT ####

exit = false

def menu
puts "Exit [1]\nPoem [2]"
end

until exit do
  menu
  command = gets.chomp.to_i

  if command == 1
    exit = true
  elsif command == 2
    puts "-"*15
    puts "sdoin"
  else
    puts "wrong"
  end
end
