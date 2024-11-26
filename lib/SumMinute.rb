def sum_minutes(t, k)
  minutes = (((t[0].ord - '0'.ord) * 10 +
    (t[1].ord - '0'.ord)) * 60 +
    ((t[3].ord - '0'.ord) * 10 +
      (t[4].ord - '0'.ord)))

  minutes += k

  hour = (minutes / 60) % 24
  min = minutes % 60

  print hour < 10 ? "0#{hour}:" : "#{hour}:"
  print min < 10 ? "0#{min}" : "#{min}"
end

if __FILE__ == $0
  t = "21:39"
  k = 44

  sum_minutes(t, k)
end

