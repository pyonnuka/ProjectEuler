fibonacci_num_fast  = 1
fibonacci_num_later = 2

sum = 0
loop do
  sum += fibonacci_num_later if fibonacci_num_later % 2 == 0

  next_num = fibonacci_num_fast + fibonacci_num_later
  fibonacci_num_fast = fibonacci_num_later
  fibonacci_num_later = next_num

  break if fibonacci_num_later > 4000000
end

puts sum
