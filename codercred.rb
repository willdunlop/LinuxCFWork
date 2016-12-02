
class Maths
  def initialize(i,n)
      @i = i
      @n = n
  end

  attr_reader :i, :n


  def func

    if i < n
        i + 1
        @nn << i
        func
    else
      print "#{i},#{n} "
    end
  end

end

@nn = []
ans = Maths.new(3, 5)

ans.func
