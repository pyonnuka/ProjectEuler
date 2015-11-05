nums = [*2..999999].delete_if {|n| n % 2 == 0}

now_value = 0
max_value = 0
max_count = 0
puts 'start'
nums.each do |num|
  now_value = num

  count = 0
  loop do
    if now_value % 2 == 0
      now_value /= 2
    elsif now_value == 1
      break
    else
      now_value = now_value * 3 + 1
    end

    count += 1
  end

  if count > max_count
    max_count = count
    max_value = num
  end
end
puts 'end'

puts max_value
