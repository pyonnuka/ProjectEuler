range = (1..100)

sum_of_first_handred_number = range.inject {|sum, n| sum + n}
square_of_sum_first_handred_number = sum_of_first_handred_number * sum_of_first_handred_number
sum_of_square_first_handred_number = range.inject {|sum, n| sum + (n * n) }
puts square_of_sum_first_handred_number - sum_of_square_first_handred_number
