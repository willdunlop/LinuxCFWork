################################################################################
# Welcome to week 2!!!
## In this class we will be learning how to implement gems into our app. Later in
## the day we will be going through the basics of GIT, and we have a special guest
## lined up as a mentor for you!
### For todays challenge you will be required to complete 3 tasks.
### 1. Output the data to terminal using the Terminal-Table gem.
### 2. Build your own progress bar which informs the user how many days are left
###    as they enter the temperatures. Externalise it in a seperate .rb file and
###    require it as a module in this file.
### 3. cls the terminal screen after each user input.
### 4. Implement the Paint gem in such a way that temperatures over 29 degrees
###    celsius are colored red in the terminal, and temperatures that fall below
###    that number are colored blue.
################################################################################
# Require loads a module or gem.
require 'date'
require 'terminal-table'
require 'paint'
require './Progress.rb'

@rows = []
# Date::ABBR_DAYNAMES will provide us abbreviated Day Names.
dayNames = Date::ABBR_DAYNAMES
class Celsius
  def initialize(temperature)
    @temperature = temperature
  end
  def temperature
    @temperature
  end
  def to_f
    @temperature * 1.5 + 30
  end
end
class Day
  def initialize(name, temperature)
    @name = name
    @temperature = temperature
  end
  def name
    @name
  end
  def temperature (format = "")
    # If the string "fahrenheit" is passed in as an argument then call the to_f
    # method on the @temperature class, otherwise default to Celsius.
    format == "fahrenheit" ? @temperature.to_f : @temperature.temperature
  end
  # The self.all method returns all objects created from the Day class.
  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
def intro
  @a = 0
  def frame
    sleep(0.2)
    system "cls"
  end
  while @a < 10
    puts "\e[35m=\e[0m" * 24
    puts "\e[35m=== WILLS TEMP TABLE ===\e[0m"
    puts "\e[35m=\e[0m" * 24
    frame
    puts "\e[36m=\e[0m" * 24
    puts "\e[36m=== WILLS TEMP TABLE ===\e[0m"
    puts "\e[36m=\e[0m" * 24
    frame
    @a = @a + 1
  end
end
# For each Day ask the user for the temperature and Instantiate a Day with a
# Celsuis object as the temperature attribute.
intro

dayNames.each do |day|
      Days.loop
      puts "Hi, what was the temperature on #{day}"
      Day.new(day, Celsius.new(gets.chomp.to_i))
  end

# Output the data in an ugly table
Day.all.each do |day|
  if day.temperature > 29
    @rows << [day.name, "\e[31m#{day.temperature}", "#{day.temperature("fahrenheit")}\e[0m"]
  else
    @rows << [day.name, "\e[36m#{day.temperature}", "#{day.temperature("fahrenheit")}\e[0m"]
  end
  #  puts "| #{day.name} | #{day.temperature} | #{day.temperature("fahrenheit")} |"
end
#@headrows = []
#@headrows << ["Day", " C ", " F "]
#@heading = Terminal::Table.new :rows => @headrows
@table = Terminal::Table.new :rows => @rows
puts " \e[35mWILLS TEMP TABLE\e[0m"
#puts @heading
puts @table
