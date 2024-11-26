def sum_minutes(T, K)
  minutes = (((T[0].ord - '0'.ord) * 10 +
    (T[1].ord - '0'.ord)) * 60 +
    ((T[3].ord - '0'.ord) * 10 +
      (T[4].ord - '0'.ord)))

  minutes += K

  hour = (minutes / 60) % 24
  min = minutes % 60

  print hour < 10 ? "0#{hour}:" : "#{hour}:"
  print min < 10 ? "0#{min}" : "#{min}"
end

if __FILE__ == $0
  T = "21:39"
  K = 43

  sum_minutes(T, K)
end

