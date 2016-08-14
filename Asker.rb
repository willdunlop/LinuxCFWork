###############
###  ASKER  ###
###############

### FUNCTION ###
def setword(ans)
  if ans == "yes"
    res = "do"


  elsif ans == "no"
    res = "do not"
  end
end

def why(ans)
  if ans == "yes"
    puts "Chocolate is nice"


  elsif ans == "no"
    puts "What is wrong with you?"
  end
end

### CODE ###

prompt = "\e[31m>>\e[0m"
ans = ""
puts " "
puts "\e[31mWelcome to Asker\e[0m
A simple as shit ruby program"
puts "Enter Name:"
user = gets.chomp
puts "Hello #{user}"
puts "How old are you?"
puts prompt
age = gets.chomp

#Using a comma in puts lets you use it twice
puts "Whats your favourite colour?", prompt
col = gets.chomp


while ans != "yes" && ans != "no" do
  puts "Do you like chocolate?", prompt

    ans = gets.chomp
end


res = setword(ans)



puts ""
puts "Okay #{user}. So you are #{age} years old,
You like the colour #{col},
And you #{res} like chocolate"
why(ans)
