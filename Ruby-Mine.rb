#############################
##### WEEEK 2 CHALLENGE #####
  ###     RUBY MINER    ###
   #######################
require 'elscripto'




class RubyMiner
  def initialize(efunc)
    @efunc = efunc
  end
  attr_accessor :efunc

  def main          #Main menu
    @header =  "\e[1;41;37m          RUBY MINER v1.0          \e[1;0;0m"
    system "clear"
    puts @header
    efunc.tcheck
    puts"\n\e[33m[1]\e[31m\tExercises\n\e[33m[2]\e[31m\tCreate File\n\e[33m[3]\e[31m\tKoans"
    puts "\e[33m[4]\e[31m\tAbout\n\e[33m[5]\e[31m\tExit\e[0m"
    puts "\n\e[41m                                   \e[0m"
    print "\e[37mENTER NUMBER: "
    @m = gets.chomp
    puts "\e[0m"
    case @m
    when "1"
      exercise
    when "2"
      system "clear"
      puts @header
      puts "UNDER CONSTRUCTION"
      #makfile
      sleep(4)
      main
    when "3"
      system "clear"
      puts @header
      puts "UNDER CONSTRUCTION"
      #koans
      sleep(4)
      main
    when "4"
      about
    when "5"
      system "clear"
      puts @header
      puts "\e[37mThank you for trying Ruby Miner"
      puts "\n\n\e[37mAll rights reserved ©Ruby Miner 2016\nBy William Dunlop\e[0m"
      puts "\e[41m                                   \e[0m"
      sleep(4)
      system "clear"
      exit
    end
  end

  def exercise       #Exercises menu
    @header =  "\e[1;41;37m          RUBY MINER v1.0          \e[1;0;0m"
    system "clear"
    puts @header
    puts "      \e[37m     Exercises\e[0m"
    exdir = '/home/will/CoderFactory/CFWork'
    filelist =  Dir.foreach(exdir).select { |x| File.file?("#{exdir}/#{x}") }
      filelist.map.each_with_index do |fl,i|
        puts "\e[33m[#{i+1}]\e[31m\t#{fl}\e[0m"
      end
    @in = filelist.each_index
    @in
    puts "\n\e[41m                                   \e[0m"
    print "\e[37mENTER NUMBER: "
    @r = gets.chomp.to_i
    puts "\e[0m"
    system "clear"
    puts @header
    puts "\n\t\e[33m#{@r}. \e[31m#{filelist[@r-1]}\e[0m\n"
    puts "\n\e[37mWhat would you like to do with this file?\e[0m"
    puts "\e[33m[1]\e[0m \e[31mView Code \e[37m| \e[33m[2] \e[31mEdit Code\n\e[33m[3]\e[31m Run Code \e[37m | \e[33m[Any]\e[31m Return\e[37m"
    puts "\n\e[41m                                   \e[0m"
    print "\e[37mENTER NUMBER: "
    whatdo = gets.chomp
    puts "\e[0m"
    case whatdo
    when "1"            #view code
      system "clear"
      puts @header
      system "cat #{filelist[@r-1]}"
      puts "\n\e[37mPress any key to quit back to menu\e[0m"
      qui = gets.chomp
      if qui == "q"
        exercise
      else
        exercise
      end
    when "2"          #Edit code
      system "clear"
      puts @header
      puts "Launching Atom\n..."
      system "sudo atom #{filelist[@r-1]}"
      sleep(1)
      puts "Returning to menu"
      sleep(2)
      exercise
    when "3"          #Run code
      system "clear"
      puts @header
      puts "Launching Application\n..."
      system "mate-terminal --window --title='Ruby-Miner v1.0 - #{filelist[@r-1]}' -e 'ruby #{filelist[@r-1]}'"
      sleep(1)
      puts "Returning to menu"
      sleep(2)
      exercise
    else
      exercise
    end
  end

  def koans

  end

  def about
    system "clear"
    puts @header
    puts "\n\e[37mWelcome to Ruby Miner v1.0
          \nRuby Miner is a small terminal based
program designed to organise and
simplify the way you access and use
your ruby projects and files.

Designed and written by an absolute
cheif, you will find that Ruby Miner
is an essential for any coder looking
to expand their programming career.

For more information and other
software that has been written by
this demi-god of a man, please visit
\e[35mwww.github.com/willdunlop\e[37m and thank
you for using Ruby Miner.\e[0m"
    puts "\n\e[41m                                   \e[0m"
    puts "\e[37mPress any key to return to the menu"
    @o = gets.chomp
    if @o = "q"
      main
    else
      main
    end
  end
end

#################################
#################################

class ExtraFunc
  def initialize()
  end

  def tcheck            #Checks time
    time = Time.new
    hour = time.strftime("%H").to_i

    if hour < 6
    	print "\e[37mIt's late dude"
    elsif hour < 12
    	print "\e[37mGood morning, "
    elsif hour < 18
    	print "\e[37mGood afternoon, "
    elsif hour < 24;
    	print "\e[37mGood evening, "
    end

    puts "The time is #{time.strftime("%I:%M%P")}  \e[0m"
  end

end


#end
launch = RubyMiner.new(ExtraFunc.new())
launch.main
