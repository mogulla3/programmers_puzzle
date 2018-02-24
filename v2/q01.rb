# CAUTION: This code is so terrible...
NUM = 100
cnt = 0

0.upto(NUM) do |guu|
  0.upto(NUM) do |choki|
    0.upto(NUM) do |paa|
      next unless guu + choki + paa == NUM
      arr = [guu, choki, paa].sort.reverse
      next if arr[0] == arr[1]
      cnt += 1
    end
  end
end

puts cnt