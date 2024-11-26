def tomohiko_sakamoto(y, m, d)
  y -= 1 if m < 3

  t = [ 0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4 ]

  day_of_week = (y + y / 4 - y / 100 + y / 400 + t[m - 1] + d) % 7

  days = ["Domingo", "Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado"]

  "A data #{d}/#{m}/#{y + (m < 3 ? 1 : 0)} foi/será um(a) #{days[day_of_week]}."
end

day = 13
month = 7
year = 2017

puts tomohiko_sakamoto(year, month, day)