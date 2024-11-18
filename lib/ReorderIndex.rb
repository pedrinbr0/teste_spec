def reorder_index(arr, index)

  temp = Array.new(arr.size)

  index.each_with_index do |new_index, i|
    temp[new_index] = arr[i]
  end

  arr.each_with_index do |_, i|
    arr[i] = temp[i]
    index[i] = i
  end

  [arr, index]
end

arr = [10, 11, 12]
index = [1, 0, 2]

arr, index = reorder_index(arr, index)

puts "arr[] = #{arr}"
puts "index = #{index}"