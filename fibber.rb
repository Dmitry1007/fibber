require 'pry'

class Fibber

  def fiberize(how_many)
    @fibo_ray = [0,1]
    a = 0
    b = 1

    until @fibo_ray.size == how_many
     sum = a + b
     @fibo_ray << sum
     a = b
     b = sum
    end
    
    @fibo_ray
  end

  def jagged_output(fibo)
    nested = []
    fibo.each_slice(5) { |e| nested << e }
    
    nested.each { |a,b,c,d,e| puts "#{a} #{b} #{c} #{d} #{e}\n" }
  end

end

fibber = Fibber.new
fibo = fibber.fiberize(15)
fibber.jagged_output(fibo)


