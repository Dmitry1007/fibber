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
    nested.each        { |a,b,c,d,e| print "#{a} #{b} #{c} #{d} #{e}\n" }
  end

  def better_output(fibo)
    nested = []
    fibo.each_slice(5) { |e| nested << e }
    a = nested[0]
    b = nested[1]
    c = nested[2]
    
    puts "        #{a[0]}    #{a[1]}    #{a[2]}    #{a[3]}    #{a[4]}"
    puts "        #{b[0]}    #{b[1]}   #{b[2]}   #{b[3]}   #{b[4]}"
    puts "       #{c[0]}   #{c[1]}  #{c[2]}  #{c[3]}  #{c[4]}"
  end

end

fibber = Fibber.new
fibo = fibber.fiberize(15)
# fibber.jagged_output(fibo)
fibber.better_output(fibo)

# Challenge 1: Jagged Output

# 0 1 1 2 3
# 5 8 13 21 34
# 55 89 144 233 377

# Challenge 2: Better Output

#    0    1    1    2    3
#    5    8   13   21   34
#   55   89  144  233  377



