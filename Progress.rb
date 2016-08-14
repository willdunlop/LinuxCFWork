
#@i = 0
#def loop
#  if @i < 7
#    @i = @i +1
#  end
#end



class Progress
  def initialize(start, fin)
    @start = start
    @fin = fin
  end
  attr_reader :start, :fin

  def loop
    if @start < @fin
      @start = @start + 1
      system "cls"
      puts "Day #{@start}/#{@fin}"
    end
  end
end

Days = Progress.new(0, 7)
