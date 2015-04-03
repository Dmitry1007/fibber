class Fibber

  def fiberize(quantity)
    fibo_ray = [0,1]
    a = 0
    b = 1

      until fibo_ray.size == quantity
       sum = a + b
       fibo_ray << sum
       a = b
       b = sum
      end
    
    fibo_ray
  end

  def jagged_output(fibo_ray)
    nested = []
    fibo_ray.each_slice(5) { |e| nested << e }
    nested.each            { |a,b,c,d,e| print "#{a} #{b} #{c} #{d} #{e}\n" }
  end

  def better_fancy_output(fibo_ray)
    @nested = []
    fibo_ray.each_slice(5) { |e| @nested << e }
    better_fancy_output_printer
  end

  def better_fancy_output_printer
    a = @nested[0]
    b = @nested[1]
    c = @nested[2]
    d = @nested[3]

    puts "\n  #{a[0]}    #{a[1]}    #{a[2]}    #{a[3]}    #{a[4]}"
    puts "  #{b[0]}    #{b[1]}   #{b[2]}   #{b[3]}   #{b[4]}"
    puts " #{c[0]}   #{c[1]}  #{c[2]}  #{c[3]}  #{c[4]}"
    puts "#{d[0]}  #{d[1]} #{d[2]} #{d[3]} #{d[4]}"
  end

end

fibber = Fibber.new
fibo = fibber.fiberize(20)
fibber.jagged_output(fibo)
fibber.better_fancy_output(fibo)

