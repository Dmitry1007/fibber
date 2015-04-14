puts "How many fibonacci numbers?"

quantity = gets.to_i

fibo = [0,1]

(quantity - 2).times do
  fibo << fibo[-1] + fibo[-2]
end

fibo.each.with_index do |num,index|
  print num.to_s.rjust(fibo.last.to_s.size + 1)
  print "\n" if (index + 1) % 5 == 0
end


