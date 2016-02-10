END_NUM = 1000

sum = 0
(1...END_NUM).each do |num|
  sum += num if num % 3 == 0 || num % 5 == 0
end

puts sum
