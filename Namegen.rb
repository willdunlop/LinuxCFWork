


  def maker
    let = ("a".."z").to_a
    vow = ["a", "e", "i", "o", "u"]
    con = let - vow

    ranvow = vow.sample
    ranvow2 = vow.sample
    ranvow3 = vow.sample
    ranvow4 = vow.sample

    rancon = con.sample
    rancon2 = con.sample
    rancon3 = con.sample
    rancon4 = con.sample
    rancon5 = con.sample


    @name1s = "#{rancon}" + "#{ranvow}" + "#{rancon2}"
    @name1s2 = "#{rancon}#{ranvow}#{rancon2}#{rancon3}"

    @name2s = "#{rancon}#{ranvow}#{rancon2}#{ranvow2}"
    @name2s2 = "#{rancon}#{ranvow}#{rancon2}#{ranvow2}#{rancon3}"
    @name2s3 = "#{rancon}#{ranvow}#{rancon2}#{ranvow2}#{rancon3}#{rancon4}"

    @name3s = "#{rancon}#{ranvow}#{rancon2}#{ranvow2}#{rancon3}#{rancon4}#{ranvow3}"
    @name3s2 = "#{rancon}#{ranvow}#{rancon2}#{ranvow2}#{rancon3}#{rancon4}#{ranvow3}#{rancon5}"


    @names = [@name1s, @name1s2, @name2s, @name2s2, @name2s3, @name3s, @name3s2]
    @genname = @names.sample

  end

  def menu
    a = gets.chomp
    case a
    when ""
      maker
      system "clear"
      puts "\e[1;41;37m  NAME GENERATOR   \e[1;0;0m"
      puts "\e[46m  \e[0m\n"
      puts "\e[46m  \e[0m\e[31m >> #{@genname} \e[0m"
      puts "\e[46m  \e[0m\n"
      puts "\e[46m  \e[0m\n"
      puts "\e[46m  \e[0m              \e[37mexit\e[0m\n"
      puts "\e[31mPress ENTER to cycle through names\e[0m"
      menu
    when "exit"
      exit
    else
      puts "\e[37mNo typing..."
      sleep(1)
      puts "               ...Just \e[31mENTER\e[0m"
      menu
    end
  end


  maker
  puts "\e[31mPress ENTER to cycle through names\e[0m"
  menu
