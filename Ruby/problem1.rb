sum = 0
(1..999).each do |num|
  next unless num % 3 == 0 || num % 5 == 0
  sum += num
end

puts sum
