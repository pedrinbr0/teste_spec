def tomohiko_sakamoto(y, m, d)
  y -= 1 if m < 3

  t = [ 0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4 ]

  (y + y / 4 - y / 100 + y / 400 + t[m - 1] + d) % 7
end

day = 13
month = 7
year = 2017

puts tomohiko_sakamoto(year, month, day)