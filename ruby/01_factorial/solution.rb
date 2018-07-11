def factorial(n)
if ((n.is_a? Integer == false) || n < 0)
raise RuntimeError
elsif n == 0 || n == 1 
     1
else
    sum = 1
    n.times do |t|
      sum *= (t + 1)
    end
    sum
end
en