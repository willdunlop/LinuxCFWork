# class Restaurant
#   def initialize(meal, price)
#     @meal = meal
#     @price = price
#   end
# attr_accessor :meal, :price
#   def self.all
#     ObjectSpace.each_object(self).to_a
#   end

  def title
    puts "\e[1;41;33m       Will's Famous       \e[1;0;0m"
    puts "\e[1;41;33m        Bar & Grill        \e[1;0;0m"
  end
  def menu
    system "cls"
    title
    meal = ["Chicken Avacado", "Gnochi", "Prawn Plate", "Cheeseburger"]
    puts "   \e[1;41;37m        Menu        \e[1;0;0m\n\e[37mMake a selection:"
    meal.map.each_with_index{|v,i| puts " \e[33m[#{i+1}]\t \e[31m#{v}\n\e[0m"}
    puts "\e[41m                           \e[0m"
    puts "\e[37mType 'exit' to quit\n\e[31mChoose an item: \e[0m"
    @item = gets.chomp
    if @item == "1"
      chick
    elsif @item == "2"
      gnoch
    elsif @item == "3"
      prawn
    elsif @item == "4"
      burger
    elsif @item == "exit"
      system 'cls'
      title
      puts "\e[37mCome again soon!\e[0m"
      sleep(2)
      system "cls"
      exit
    else
      system "cls"
      title
      puts "  \e[37mNot available, \n  please try again\e[0m"
      sleep(2)
      menu
    end
  end

  def chick
    system "cls"
    title
    puts "\e[31mThank you for your order\nThat will be \e[33m$12.00\e[0m"
    sleep(2)
    menu
  end

  def gnoch
    system "cls"
    title
    puts "\e[31mThank you for your order\nThat will be \e[33m$14.00\e[0m"
    sleep(2)
    menu
  end

  def prawn
    system "cls"
    title
    puts "\e[31mThank you for your order\nThat will be \e[33m$11.00\e[0m"
    sleep(2)
    menu
  end

  def burger
    system "cls"
    title
    puts "\e[31mThank you for your order\nThat will be \e[33m$15.00\e[0m"
    sleep(2)
    menu
  end
menu
