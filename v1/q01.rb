num = 10

loop do
  bin = num.to_s(2)
  oct = num.to_s(8)
  dec = num.to_s

  if bin == bin.reverse && oct == oct.reverse && dec == dec.reverse
    puts dec
    break
  end
  num += 1
end
