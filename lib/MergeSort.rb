def merge_sort(arr)
  # Caso base: se o array tem 0 ou 1 elemento, ele já está "ordenado"
  return arr if arr.length <= 1

  mid = arr.length / 2

  left = merge_sort(arr[0...mid])  # Da posição 0 até antes do 'mid'
  right = merge_sort(arr[mid..])   # Da posição 'mid' até o final

  return [left, right]
end

arr = [38, 27, 43, 10]
result = merge_sort(arr)
p result
