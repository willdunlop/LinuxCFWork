class Day
  def initialize(name, temp)
    @name = name
    @temp = temp
  end
  def name
    @name
  end
  def temp
    @temp
  end
  def formula
    (@temp*1.8+32).round.to_s + " degree F"
  end
  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
name = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
name.each do |eachday|
  puts "enter the temperature for #{eachday}"
  temp = gets.chomp.to_i
  result = Day.new(eachday, temp)
end
Day.all.each do |var|
    puts "#{var.name} | #{var.temp} degrees C | #{var.formula} "
  end
