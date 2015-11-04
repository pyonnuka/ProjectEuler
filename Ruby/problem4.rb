max_palindrome = 0
(100..999).each do |num1|
  (100..999).each do |num2|
    num = num1 * num2
    max_palindrome = num if num.to_s == num.to_s.reverse && max_palindrome < num
  end
end
puts max_palindrome
