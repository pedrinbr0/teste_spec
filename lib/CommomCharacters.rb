MAX_CHAR = 26
def common_characters(strings, n)
  freq = Array.new(MAX_CHAR, 0)

  strings.each do |string|
    temp = Array.new(MAX_CHAR, 0)
    string.each_char do |char|
      if char =~ /[a-zA-Z]/
        temp[char.downcase.ord - 'a'.ord] = 1
      end
    end

    (0...MAX_CHAR).each do |i|
      freq[i] += temp[i]
    end
  end

  result = []
  (0...MAX_CHAR).each do |i|
    result << (i + 'a'.ord).chr if freq[i] == n
  end

  result.sort.join  # Ordena os caracteres antes de retornar
end

strings = ["geeksforgeeks", "gemkstones", "acknowledges", "aguelikes"]
n = strings.size

puts common_characters(strings, n)
