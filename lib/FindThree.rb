def find_three_largest(arr)
  arr_size = arr.length

  if arr_size < 3
    puts "Inválido"
    return
  end

  third = first = second = -Float::INFINITY

  arr.each do |element|
    if element > first
      third = second
      second = first
      first = element
    elsif element > second && element != first
      third = second
      second = element
    elsif element > third && element != second && element != first
      third = element
    end
  end

  [first.to_s, second.to_s, third.to_s]
end

arr = [12, 13, 1, 10, 34, 11, 34]
find_three_largest(arr)
