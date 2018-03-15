cards = Array.new(100, false)

i = 2
(2..cards.size).each do
  (i - 1).step(cards.size, i) { |n| cards[n] = !cards[n] }
  i += 1
end

cards.each.with_index(1) { |card, i| puts i unless card }