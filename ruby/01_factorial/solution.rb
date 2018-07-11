def factorial(num)
if num == 0 || num == 1
    1
  else
    sum = 1
    num.times do |n|
      sum *= (n + 1)
    end
    sum
  end
end
