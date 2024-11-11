def job_sequencing(arr, t)
  n = arr.length

  # Ordena todos os trabalhos em ordem decrescente de lucro
  (0...n).each do |i|
    (0...(n - 1 - i)).each do |j|
      if arr[j][2] < arr[j + 1][2]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
    end
  end

  # Para acompanhar os horários livres
  result = Array.new(t, false)

  # Para armazenar o resultado (sequência de trabalhos)
  job = Array.new(t, '-1')

  # Itera por todos os trabalhos dados
  arr.each do |job_info|
    # Acha um horário livre para este trabalho (começando pelo último horário possível)
    ( [t - 1, job_info[1] - 1].min ).downto(0) do |j|
      # Se um horário livre foi encontrado
      if result[j] == false
        result[j] = true
        job[j] = job_info[0]
        break
      end
    end
  end

  # Exibe a sequência de trabalhos
  puts job
end

arr = [['a', 2, 100],
       ['b', 1, 19],
       ['c', 2, 27],
       ['d', 1, 25],
       ['e', 3, 15]]

puts "A sequência de trabalhos com lucro máximo é:"
job_sequencing(arr, 3)
