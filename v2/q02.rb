def get_stamp_patterns(stations)
  from = stations.first
  to = stations.last
  patterns = []
  2.upto(stations.size) do |n|
    stations.combination(n).to_a.each do |pattern|
      patterns << pattern if pattern.first == from && pattern.last == to
    end
  end
  patterns
end

res = get_stamp_patterns((1..17).to_a) + get_stamp_patterns((17..30).to_a)
puts res.size - 1