def FibonacciSearch( arr, x, n)
  fib_two_before = 0
  fib_one_before = 1
  fib_current = fib_two_before + fib_one_before

  while fib_current < n
    fib_two_before = fib_one_before
    fib_one_before = fib_current
    fib_current = fib_two_before + fib_one_before
  end

  offset = -1

  while fib_current > n
    i = [offset + fib_two_before, n - 1].min

    if arr[i] < x
      fib_current = fib_one_before
      fib_one_before = fib_two_before
      fib_two_before = fib_current - fib_one_before
      offset = i

    elsif arr[i] > x
      fib_current = fib_two_before
      fib_one_before = fib_one_before - fib_two_before
      fib_two_before = fib_current - fib_one_before

    else
      return i
    end
  end

  if fib_one_before > 0 && arr[n - 1] == x
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
