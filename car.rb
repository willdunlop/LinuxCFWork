class Driver
  def initialize(name, car, age, contact)
    @name = name
    @car = car
    @age = age
    @contact = contact
  end
  attr_accessor :name, :car, :age, :contact

end

class Car
  def initialize(make, age, top_speed, gas_tank_size)
    @make = make
    @age = age
    @top_speed = top_speed
    @gas_tank_size = gas_tank_size
  end
  attr_accessor :make, :age, :top_speed, :gas_tank_size

  def journey
    puts "How far did you travel? "
    @dist_travelled = gets.chomp.to_f
    @gasused = 0.07 * @dist_travelled
    @gas_tank_size = @gas_tank_size - @gasused
    @gas_tank_size = @gas_tank_size.round(2)
    if @gas_tank_size > 0
      puts "You have #{@gas_tank_size}L remaining"
    else
      @gas_tank_size = 0
      puts "You have run out of gas"
    end
  end
end

will = Driver.new("Will", Car.new("Honda", "16 years", "230km/h", 60.00), 23, "0412345678")

will.car.journey
