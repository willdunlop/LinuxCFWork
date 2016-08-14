class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
attr_accessor :name, :age
end

username = gets.chomp

john = Person.new("John", 20)
name = john.name = username
age = john.age
puts "Name is #{name} and I am #{age}"
