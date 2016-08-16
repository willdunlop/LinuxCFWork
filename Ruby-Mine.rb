#############################
##### WEEEK 2 CHALLENGE #####
  ###     RUBY MINER    ###
   #######################
require 'artii'



class RubyMiner
  def initialize(efunc)
    @efunc = efunc
  end
  attr_accessor :efunc


  def intro
    system "clear"
    @con = 0
    @zz = Artii::Base.new :font => 'slant'
    until @con == 20 do
      system "clear"
      puts "\e[31m#{@zz.asciify('RUBY-MINER!')}\e[0m"
      puts "\e[33m\t\tSeizure Edition\e[0m"
      sleep(0.05)
      system "clear"
      puts "\e[33m#{@zz.asciify('RUBY-MINER!')}\e[0m"
      puts "\e[31m\t\tSeizure Edition\e[0m"
      sleep(0.05)
      @con = @con + 1

    end
    main
  end


  def main          #Main menu
    efunc.header
    efunc.tcheck
    puts"\n\e[33m[1]\e[31m\tExercises\n\e[33m[2]\e[31m\tCreate File\n\e[33m[3]\e[31m\tKoans"
    puts "\e[33m[4]\e[31m\tGit Push\n\e[33m[5]\e[31m\tAbout\n\e[33m[6]\e[31m\tExit\e[0m"
    efunc.footer
    print "\e[37mENTER NUMBER: "
    @m = gets.chomp
    puts "\e[0m"
    case @m
    when "1"
      exercise
    when "2"
      makfile
    when "3"
      efunc.header
      puts "\n\t\e[1;47;31mUNDER CONSTRUCTION\e[1;0;0m"
      #koans
      efunc.footer
      sleep(4)
      main
    when "4"
      gitpush

    when "5"
      about
    when "6"
      efunc.header
      puts "\e[37mThank you for trying Ruby Miner"
      puts "\n\n\e[37mAll rights reserved © Ruby Miner 2016\nBy William Dunlop\e[0m"
      efunc.footer
      sleep(4)
      system "clear"
      exit
    end
  end

  def exercise       #Exercises menu
    efunc.header
    puts "\t\e[37m  Exercises\e[0m"
    puts ""
    exdir = '/home/will/CoderFactory/LinuxCFWork'
    filelist =  Dir.foreach(exdir).select { |x| File.file?("#{exdir}/#{x}") }
      filelist.map.each_with_index do |fl,i|
        puts "\e[33m[#{i+1}]\e[31m\t#{fl}\e[0m"
      end
      puts "\n\e[33m[0]\t\e[36mReturn to Menu\e[0m"
    @in = filelist.each_index
    @in
    efunc.footer
    print "\e[37mENTER NUMBER: "
    @r = gets.chomp.to_i
    puts "\e[0m"
    if @r == 0
      main
    elsif @r > filelist.count
      efunc.header
      puts "\n\e[31mIncorrect input, please try again\e[0m"
      efunc.footer
      sleep(2)
      exercise
    else
      efunc.header
      puts "\n\t\e[33m#{@r}. \e[31m#{filelist[@r-1]}\e[0m\n"
      puts "\n\e[37mWhat would you like to do with this file?\e[0m"
      puts "\e[33m[1]\e[0m \e[31mView Code \e[37m| \e[33m[2] \e[31mEdit Code\n\e[33m[3]\e[31m Run Code \e[37m | \e[33m[Any]\e[31m Return\e[37m"
      efunc.footer
      print "\e[37mENTER NUMBER: "
      whatdo = gets.chomp
      puts "\e[0m"
      case whatdo
      when "1"            #view code
        efunc.header
        system "cat #{filelist[@r-1]}"
        puts "\n\e[37mPress any key to quit back to menu\e[0m"
        qui = gets.chomp
        if qui == "q"
          exercise
        else
          exercise
        end
      when "2"          #Edit code
        efunc.header
        puts "Launching Atom\n..."
        system "sudo atom #{filelist[@r-1]}"
        sleep(1)
        puts "Returning to menu"
        sleep(2)
        exercise
      when "3"          #Run code
        efunc.header
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
  end

  def makfile
    efunc.header
    puts "\t\e[37m  File Creater"
    puts "\n\e[37mFile creater is a tool in Ruby Miner
that allows you to create and set up
'.rb'files in you 'Exercises' directory.
It willask you whether or not you want to
set up your classes or attributes now or
later."
    puts "\n \e[31mWhat is the name of your project?\e[0m"
    efunc.footer
    print "\e[37mPROJECT NAME: "
    @@fil = gets.chomp
    puts "\e[0m"
    system "touch /home/will/CoderFactory/LinuxCFWork/#{@@fil}.rb"
    efunc.header
    puts "\e[37mFile \e[31m#{@@fil}.rb\e[37m has been created\e[0m"
    sleep(1)
    puts "\n\e[37mWould you like to set up it's classes \nand attributes?"
    efunc.footer
    print "\e[37mY/N? "
    cna = gets.chomp
    puts"\e[0m"
    if cna == "y"
      template
    elsif cna == "n"
      efunc.header
      puts "\n\e[37mFile is blank\e[0m"
      efunc.footer
      sleep(2)
      @z = 1
      main
    else
      efunc.header
      puts "\e[37mIncorrect input\nPlease try again\e[0m"
      efunc.footer
    end
  end

  def template
    @cfile = File.open("/home/will/CoderFactory/LinuxCFWork/#{@@fil}.rb", 'a+')
    efunc.header
    puts "\n\e[37mWhat is the name of your class?"
    efunc.footer
    print "\e[37mCLASS NAME: "
    @cla = gets.chomp
    @cfile.write("\nclass #{@cla}")
    efunc.header
    puts "\n\e[37mDoes it have any attributes?"
    efunc.footer
    print "\e[37mY/N? "
    @qa = gets.chomp
    if @qa == "y"
      efunc.header
      puts "\n\e[37mHow many attributes?"
      efunc.footer
      print "\e[37mENTER NUMBER: "
      @atcheck = 0
      @atnum = gets.chomp.to_i
      @attar = []
      until @atcheck == @atnum do
        efunc.header
        puts "\n\e[37mWhat is attribute No. #{@atcheck + 1}?"
        efunc.footer
        print "\e[37mENTER ATTRIBUTE: "
        @attch = gets.chomp
        @attar << @attch
        @atcheck = @atcheck + 1
      end
      @cfile.write("\n\tdef initialize(#{@attar})")
      @attar.each do |atch|
        @cfile.write("\n\t\t@#{atch} = #{atch}")
      end
      @cfile.write("\n\tend\nend")
      @cfile.close
      efunc.header
      puts "\n\e[37mclass has been set up\e[0m"
      sleep(2)
      puts "\e[37mReturning to main menu\e[0m"
      sleep(1)
      efunc.footer
      main
    elsif @qa == "n"
      efunc.header
      @cfile.write("\n\tdef initialize()\n\n\tend\nend")
      @cfile.close
      puts "\e[37mClass has been setup\e[0m"
      efunc.footer
      sleep(2)
      puts "\e[37mReturning to main menu\e[0m"
      sleep(1)
      main

    end
  end

  def gitpush
    efunc.header
    print "Enter a commit comment: "
    comit = gets.chomp
    puts "Launching seperate terminal for git"
    system "mate-terminal --window --title='Ruby-Miner v1.0 - GitPusher' -e 'cd /home/will/CoderFactory/LinuxCFWork && git init && git add . && git commit -m '#{comit}' && git push -u origin master'"
    puts "..."
    sleep(2)
    puts "git push was successful"
    efunc.footer
    sleep(1)
    puts "Returning to menu"
    sleep(1)
    main

  end

  def koans

  end

  def about
    efunc.header
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
this scientist of a man, please visit
\e[35mwww.github.com/willdunlop\e[37m and thank
you for using Ruby Miner.\e[0m"
  efunc.footer
    puts "\e[37mPress any key to return to the menu"
    @o = gets.chomp
    if @o == "q"
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

  def header
    @header =  "\e[1;41;37m          RUBY MINER v1.0          \e[1;0;0m"
    system "clear"
    puts @header
  end

  def footer
    puts "\n\e[41m                                   \e[0m"
  end

end


#end
launch = RubyMiner.new(ExtraFunc.new())
launch.intro
