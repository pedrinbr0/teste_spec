def fractional_knapsack(arr, w)
  n = arr.length

  # Ordena os itens pelo valor por unidade de peso em ordem decrescente
  (0...n).each do |i|
    (0...(n - 1 - i)).each do |j|
      if arr[j][1].to_f / arr[j][2] < arr[j + 1][1].to_f / arr[j + 1][2]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
    end
  end

  total_value = 0.0
  remaining_capacity = w

  arr.each do |item|
    value = item[1]
    weight = item[2]

    if weight <= remaining_capacity
      total_value += value
      remaining_capacity -= weight
    else
      total_value += value * (remaining_capacity.to_f / weight)
      break
    end
  end

  total_value
end

arr = [['Pera', 60, 10],
       ['Abacaxi', 100, 20],
       ['Melancia', 120, 30]]
w = 50

lucro = fractional_knapsack(arr, w)
puts "O lucro máximo, considerando a capacidade da mochila, é #{lucro}"
