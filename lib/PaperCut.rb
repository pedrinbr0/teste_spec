def paper_cut(rem_squares, b)
  base = 1
  key = 0
  b.times do |i|
    key += rem_squares[i] * base
    base *= (b + 1)
  end
  key
end

# Função recursiva para encontrar o número mínimo de cortes em quadrados
# para um dado array rem_squares
def solve(rem_squares, a, b, dp)
  # Verifica se já calculamos a resposta para o mesmo estado
  key = paper_cut(rem_squares, b)
  return dp[key] if dp[key]

  max_rem_squares = 0
  start = 0
  finish = 0

  # Encontra o ponto inicial da altura mínima
  b.times do |i|
    if rem_squares[i] > max_rem_squares
      max_rem_squares = rem_squares[i]
      start = i
    end
  end

  # Se max_rem_squares = 0, então já cortamos todo o papel
  return 0 if max_rem_squares == 0

  finish = start
  new_rem_squares = rem_squares.dup

  ans = Float::INFINITY

  # Encontra o ponto final da altura mínima
  while finish < b
    # Tamanho da borda do quadrado do início até o fim atual
    square_edge = finish - start + 1

    # Se a coluna atual não tiver max_rem_squares ou não puder cortar o quadrado,
    # saia do loop
    break if new_rem_squares[finish] != max_rem_squares || new_rem_squares[finish] - square_edge < 0

    # Se pudermos cortar um quadrado de tamanho square_edge, atualiza rem_squares
    (start..finish).each do |i|
      new_rem_squares[i] = max_rem_squares - square_edge
    end

    # Encontra a solução para o novo rem_squares
    ans = [ans, 1 + solve(new_rem_squares, a, b, dp)].min
    finish += 1
  end

  dp[key] = ans
  ans
end

# Função para encontrar o número mínimo de quadrados que podemos cortar
# usando papel de tamanho A x B
def min_squares(a, b)
  # Se o retângulo dado já é um quadrado
  return 1 if a == b

  # Inicializa rem_squares = a para todas as colunas b
  rem_squares = Array.new(b, a)

  dp = {}
  solve(rem_squares, a, b, dp)
end

# Entrada de exemplo
a = 13
b = 11

# Chamada da função para obter o número mínimo de quadrados para A x B
puts min_squares(a, b)
