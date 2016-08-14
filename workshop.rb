class Workshop
  def initialize(date, venue)
    @date = date
    @venue = venue
      end
  attr_reader :date, :venue

  @student_name = []
  @student_about = []
  @coach_name = []
  @coach_bio = []

  def add_participant(member)
    if member.class == Student
      @student_name[] << member.full_name
      @student_about << member.about
    else
      @coach_name << member.full_namec
      @coach_bio << member.bio
    end
  end

  #def self.all
  #  ObjectSpace.each_object(self).to_a
#  end

  def print_details

#    @stud = [@student_name, @student_about]
#    @coa = [@coach_name, @coach_bio]
    puts "\nWorkshop - #{self.date} - Venue: #{self.venue}"
    puts "\nStudents"
  #  puts "#{self.add_participant(@student_name)}"
    @student_name.each do |mems|
      puts "#{mems} - #{@student_about[0]}"
    end
    #end
  #   puts "Coaches"
  #  @coach_name.each do |memc|
  #    puts "#{memc[0]} - #{memc[1]}"
  #  end
  end
end

 class Student
  def initialize(full_name, about)
    @full_name = full_name
    @about = about
  end
  attr_reader :full_name, :about

end

class Coach
  def initialize(full_namec, bio, *skill=nil)
    @full_namec = full_namec
    @bio = bio
    @skil = skill
  end
  attr_reader :full_namec, :bio

  def add_skill(skill)
    @skill = []
    @skill << skill
  end
  attr_reader :skill

  end


workshop = Workshop.new("12/03/2014", "Shutl")

jane = Student.new("Jane Doe", "I am trying to learn programming and need some help")
lena = Student.new("Lena Smith", "I am really excited about learning to program!")
#vicky = Coach.new("Vicky Ruby", "I want to help people learn coding.")
#vicky.add_skill("HTML")
#vicky.add_skill("JavaScript")
#nicole = Coach.new("Nicole McMillan", "I have been programming for 5 years in Ruby and want to spread the love")
#nicole.add_skill("Ruby")
workshop.add_participant(jane)
workshop.add_participant(lena)
#workshop.add_participant(vicky)
#workshop.add_participant(nicole)
workshop.print_details
#
# Workshop - 12/03/2014 - Venue: Shutl
#
# Students
# 1. Jane Doe - I am trying to learn programming and need some help
# 2. Lena Smith - I am really excited about learning to program!
#
# Coaches
# 1. Vicky Ruby - HTML, JavaScript
#    I want to help people learn coding.
# 2. Nicole McMillan - Ruby
#    I have been programming for 5 years in Ruby and want to spread the love
#
