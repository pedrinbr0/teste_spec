def FibonacciSearch( arr, x, n)
  fib_m_m2 = 0
  fib_m_m1 = 1
  fib_m = fib_m_m2 + fib_m_m1

  while fib_m < n
    fib_m_m2 = fib_m_m1
    fib_m_m1 = fib_m
    fib_m = fib_m_m2 + fib_m_m1
  end

  offset = -1

  while fib_m > n
    i = [offset + fib_m_m2, n - 1].min

    if arr[i] < x
      fib_m = fib_m_m1
      fib_m_m1 = fib_m_m2
      fib_m_m2 = fib_m - fib_m_m1
      offset = i

    elsif arr[i] > x
      fib_m = fib_m_m2
      fib_m_m1 = fib_m_m1 - fib_m_m2
      fib_m_m2 = fib_m - fib_m_m1

    else
      return i
    end
  end

  if fib_m_m1 > 0 && arr[n - 1] == x
    return n - 1
  end

  return -1

end

arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]
n = arr.length
x = 235

ind = FibonacciSearch( arr, x, n )

if ind >= 0
  puts "Encontrado no index #{ind}!"
else
  puts "#{x} não foi encontrado no array."
end
