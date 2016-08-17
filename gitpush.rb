def intro
  system "clear" or system "cls"
  puts "\e[1;41;37m           GitPusher           \e[1;0;0m"
  puts "\n\e[37mPlease make sure you are running
this file from your git directory
so that it pushes the right data
to the correct repository.\e[0m"
  puts "\n\e[31mAre you in the correct directory?\e[0m"
  print "\e[31mY/N? "
  @anykey = gets.chomp
  print "\e[0m"
  if @anykey == "y" || @anykey == "Y"
    gitpush
  elsif  @anykey == "n" || @anykey == "N"
    exit
  else
    puts "\e[1;47;31m  INCORRECT INPUT!  \e[1;0;0m"
    sleep(2)
    intro
  end
end

def gitpush
  print "\e[37mEnter a commit comment: "
  comit = gets.chomp
  puts "\e[37m..."
  sleep(1)

  puts "Initializing git procedure"
  system "git init"
  puts "Adding directory, preparing for push"
  sleep(0.5)
  system "git add ."
  puts "Setting up your commit"
  system "git commit -m \"#{comit}\""
  puts "Begining push"
  sleep(0.5)
  system "git push -u origin master"
  sleep(1)
  puts "\e[37mGit push was successful"
  sleep(2)
end

intro
