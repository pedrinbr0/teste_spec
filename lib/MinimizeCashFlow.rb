N = 3
def get_min(arr)
  min_ind = 0
  (1...N).each do |i|
    min_ind = i if arr[i] < arr[min_ind]
  end
  min_ind
end

def get_max(arr)
  max_ind = 0
  (1...N).each do |i|
    max_ind = i if arr[i] > arr[max_ind]
  end
  max_ind
end

def min_of_two(x, y)
  x < y ? x : y
end
def min_cash_flow_rec(amount)
  mx_credit = get_max(amount)
  mx_debit = get_min(amount)

  return if amount[mx_credit] == 0 && amount[mx_debit] == 0

  min = min_of_two(-amount[mx_debit], amount[mx_credit])
  amount[mx_credit] -= min
  amount[mx_debit] += min

  puts "Pessoa #{mx_debit} paga #{min} para Pessoa #{mx_credit}"

  min_cash_flow_rec(amount)
end
def min_cash_flow(graph)
  amount = Array.new(N, 0)

  (0...N).each do |p|
    (0...N).each do |i|
      amount[p] += (graph[i][p] - graph[p][i])
    end
  end

  min_cash_flow_rec(amount)
end

graph = [
  [0, 1000, 2000],
  [0, 0, 5000],
  [0, 0, 0]
]

min_cash_flow(graph)
