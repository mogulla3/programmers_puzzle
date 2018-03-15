cards = Array.new(100, 0)

i = 2
loop do
  break if i > cards.size
  (i - 1).step(cards.size, i) do |n|
    d = cards[n]
    break unless d

    if d == 0
      cards[n] = 1
    elsif d == 1
      cards[n] = 0
    end
  end

  i += 1
end

cards.each_with_index do |card, i|
  puts i + 1 if card == 0
end
