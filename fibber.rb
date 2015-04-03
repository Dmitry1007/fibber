class Fibber

  def fiberize(how_many)
    fibo_ray = [0,1]

      until fibo_ray.size == how_many
        
       a = fibo_ray[0]
       b = fibo_ray[1]
       sum = a + b
       fibo_ray << sum 
      
      end
    fibo_ray
  end

end




# Start with 0 and 1
# 0 plus 1 is (1)
# 1 plus 1 is (2)
# 1 plus 2 is (3)
# 2 plus 3 is (5)
# 3 plus 5 is (8)
# 5 plus 8 is (13)
# 8 plus 13 is (21)
# So the sequence starts 0, 1, 1, 2, 3, 5, 8, 13, 21.
