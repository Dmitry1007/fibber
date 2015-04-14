class Fibber

  def initialize(quantity, num_per_row)
    @quantity    = quantity
    @num_per_row = num_per_row
  end
  
  def initial_sequence
    fibo = [0,1] 
  end

  def sequence
    fibo = initial_sequence
    (@quantity - 2).times do
      fibo << fibo[-1] + fibo[-2]
    end
    return fibo
  end

  def output
    sequence.each.with_index do |num,index|
      print num.to_s.rjust(sequence.last.to_s.size + 1)
      print "\n" if (index + 1) % @num_per_row == 0
    end
  end
end

quantity    = ARGV[0].to_i
num_per_row = ARGV[1].to_i

Fibber.new(quantity, num_per_row).output
