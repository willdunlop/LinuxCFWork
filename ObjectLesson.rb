class Person
  def initialize(age, gender, name)
    @name = name
    @gender = gender
    @name = name

  end

  def name
    @name
  end

  def gender
    @gender
  end

  def age
    @age
  end


  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

class Superhero < Person                #< Person, makes ruby understand that person is a parent of superhero
  def initialize(age, gender, name, superpower)
      super(age, gender, name)
      @superpower = superpower
  end

  def superpower
    @superpower
  end
end

  trent = Person.new(26, "male", "Trent")
  nandini = Superhero.new(20, "female", "Nandini", "coding")

  Person.all.each do |something|
    puts something.class
  end

  #puts trent.class
