#require 'Terminal-Table.rb'

class Bank
  def initialize(name, email, acc, address, phone, pin)
    @name = name
    @email = email
    @acc = acc
    @address = address
    @phone = phone
    @pin = pin
  end
  attr_accessor :name, :email, :acc, :address, :phone, :pin



  def menu
    @balcheck = "./bank/balcheck.txt"
    @storedbal = open(@balcheck, "a+")
    @bal = @storedbal.read
    system "cls"
    puts "\e[1;41;33m              Menu               \e[1;0;0m"

    puts "\e[31mWelcome \e[35m#{name}\e[31m\nWhat would you like to do today?\e[36m"
    puts "Balance       |     Details"
    puts "Withdraw      |     Deposit"
    puts "                    Receipt"
    puts"\n\e[31mQuit\e[0m"

    @a = gets.chomp
    case @a
    when "Balance"
      balance
    when "Withdraw"
      withdraw
    when "Deposit"
      deposit
    when "Details"
      details
    when "Receipt"
      receipt
    when "Quit"
      quit
    else
      puts "ERROR!! Try again"
      sleep(0.4)
      menu
    end
  end
    def balance
      system "cls"
      puts "\e[1;41;33m             Balance            \e[1;0;0m"

      puts "\e[31mYou currently have \e[35m$#{@bal}\e[31m in your account\e[0m"
      sleep(2)
      menu

    end

    def withdraw
      system "cls"
      puts "\e[1;41;33m           Withdrawal           \e[1;0;0m"

      puts "\e[31mHow much would you like to withdraw?\e[0m"
      @with = gets.chomp.to_i
      if @with > @bal.to_i
        system "cls"
        puts "\e[1;41;33m           Withdrawal           \e[1;0;0m"
        puts "\e[31mCan not withdraw more than your balance\e[0m"
        sleep(2)
        menu
      elsif @with < @bal
        @bal = @bal - @with
        system "cls"
        puts "\e[1;41;33m           Withdrawal           \e[1;0;0m"
        puts "\e[35m$#{@with}\e[31m was taken from your account."
        puts "\e[35m$#{@bal}\e[31m remaining.\e[0m"
        @writebal = open(@balcheck, "w+")
        @writebal.write(@bal)
        @writebal.close
        sleep(2)
        menu
      else
        system "cls"
        puts "\e[1;41;33m           Withdrawal           \e[1;0;0m"
        puts "\e[31mThere was an error, please try again\e[0m"
        withdraw
      end
    end

    def deposit
      system "cls"
      puts "\e[1;41;33m             Deposit              \e[1;0;0m"
      puts "\e[31mHow much would you like to deposit?\e[0m"
      @dep = gets.chomp.to_i
      @bal = @bal.to_i + @dep
      system "cls"
      puts "\e[1;41;33m             Deposit              \e[1;0;0m"
      puts "\e[35m$#{@dep}\e[31m was placed in your account."
      puts "\e[35m$#{@bal}\e[31m remaining.\e[0m"
      @writebal = open(@balcheck, "w+")
      @writebal.write(@bal)
      @writebal.close
      sleep(2)
      menu
    end

    def details
      system "cls"
      puts "\e[1;41;33m        Account Details         \e[1;0;0m"
      puts "\e[31mYour details are as follows"
      puts "\e[31mName: \e[35m#{Will.name}"
      puts "\e[31mEmail: \e[35m#{Will.email}"
      puts "\e[31mAccountNo: \e[35m#{Will.acc}"
      puts "\e[31mAddress: \e[35m#{Will.address}"
      puts "\e[31mPhone: \e[35m#{Will.phone}\e[0m"
      sleep(5)
      menu
    end

    def receipt
      #puts "What file are you reading today?"
      filename = "./bank/balance.txt"
      txt = open(filename, 'w+')
      balupdate = @bal
      txt.write("-" * 32)
      txt.write("\n-= THE PROUD BANK OF WILLBANK =-")
      txt.write("\n\n  Your current balance is:")
      txt.write("\n\n\t $#{balupdate}")
      txt.write("\n")
      txt.write("\nThank you for using WillBank\n")
      txt.write("-" * 32)
      txt.rewind
      txt.close
      system "cls"
      puts "\e[1;41;33m           Receipt            \e[1;0;0m"
      puts "\e[31mYour receipt has been placed in your directory\e[0m"
      sleep (2)
      menu
    end


    def quit
      system "cls"
      puts "\e[1;41;33m           WillBank            \e[1;0;0m"
      puts "\e[31mThankyou for using WillBank\e[0m"
      sleep(2)
      system "cls"
    end
    def self.all?
      ObjectSpace.each_object(self).to_a
    end
end

############################################

# class Account
#   def initialize accname, details)
#     @accname = accname
#     @details = details
#   end
#   attr_accessor :accname, :details
#

def logo
  system "cls"
  puts  "\e[32m       ░░░▒▒▒▒▓▓▓█████████▓▓▓▒▒▒▒░░     "
  puts  "     ################################    "
  puts  "    #############  WILL  #############   "
  puts  "   ############### BANK ###############  "
  puts  "  ###################################### "
  puts  " ░░░░░▒▒▒▒▒▒▓▓▓▓▓████████▓▓▓▓▓▒▒▒▒▒▒░░░░░\e[0m"
end

def welcome
  logo
  puts "\e[1;41;33m                Welcome                   \e[1;0;0m"
  puts "\e[31mHow can we help you?\e[0m"
  puts "\e[36mCreate Account [1]    |    Login [2]"
  puts "Quit\e[0m"
  @e = gets.chomp.to_i
  case @e
  when 1
    create
  when 2
    login
  else
    puts "Error! Please try again"
    welcome
  end
end

  def create
   @att = ["name", "email", "acc", "address", "phone", "PIN"]
   @deat = []

   @att.each do |req|
     system "cls"
     puts "\e[1;41;33m            Account Creation              \e[1;0;0m"
     puts "\e[31mPlease enter your #{req}: \e[0m"
     det = gets.chomp
     @deat << det
   end
   filename = "./bank/Accounts.txt"
   acc = open(filename, "a+")
   acc.write("#{@deat[0]} = Bank.new(\"#{@deat[0]}\", \"#{@deat[1]}\", #{@deat[2]}, \"#{@deat[3]}\", \"#{@deat[4]}\", #{@deat[5]})\n")
   acc.rewind
   acc.close
  end

  def login

    puts "\e[31mHello \e[35muser\e[31m\nPlease enter your account name: \e[0m"
    @reqname = gets.chomp

#File.readlines('Accounts.txt').grep(/earl/)  #  if @reqnum
#acch = File.open('Accounts.txt', 'r').read
#puts acch.index(/'#{@reqnum}'/)

    File.open 'Accounts.txt' do |file|
    #puts file.find.any? { |line| line =~ /#{@reqname}/ }
       if file.find.any? { |line| line =~ /#{@reqname}/ } == true
         puts "enter pin"
           @reqpin = gets.chomp
         File.open 'Accounts.txt' do |file|
           if file.find.any? { |line| line =~ /#{@reqpin}/ } == true  #     @reqname.menu
             puts "success"
             Will.menu
           end
        end
     end
   end
 end

  #   else
  #     puts "Incorrect pin... Try again"
  #     login
  #   end
  # else
  #   puts "No user \e[34m'#{@reqname}'\e[0m exists... Try again"
  #   login
  # end

# end
    # @reqpin = gets.chomp.to_i
    # if @reqpin == Will.pin
    #   @balcheck = "balcheck.txt"
    #   @storedbal = open(@balcheck, "a+")
    #   @bal = @storedbal.read
    #   @bal.to_i
    #   menu
    # else
    #   puts "INCORRECT PIN"
    #   sleep(2)
    #   login
    # end
  # end

# end

filename = "Accounts.txt"
@accr = open(filename, "a+")
@accr.rewind
eval(@accr.read)
welcome





#Will = Bank.new("Will", "not@fake.com", 80085, "23 Road st", "0432968858", 1337)
#Will.login
