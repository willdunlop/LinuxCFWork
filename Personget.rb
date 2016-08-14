class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def getname
    return @name
  end

  def getage
    @age
  end

  def setname
    puts "\e[31mPlease enter your new name: \e[0m"
    @name = gets.chomp
  end

  def reqname
    puts "\e[31mAre you happy with the name:\e[0m #{@name}"
    puts "Y/N?"
    a = gets.chomp
    case a
    when "Y"
      getname
    when "N"
      setname
    end
  end
end

john = Person.new("John", 20)
name = john.reqname
age = john.getage
puts "Name is #{name} and I am #{age}"
