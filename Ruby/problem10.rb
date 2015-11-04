PRIME_SUM_BELOW_NUMBER = 2000000

sum = 0
(2..PRIME_SUM_BELOW_NUMBER).each do |num|
  next if num % 2 == 0 && num != 2

  flag = true
  (2..Math.sqrt(num).to_i).each do |check_num|
    if num % check_num == 0
      flag = false
      break;
    end
  end
  sum += num if flag
end

puts sum
