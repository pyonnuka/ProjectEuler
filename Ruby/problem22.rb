file_date = File.open("../files/problem22_name.txt").read

total_score = 0
file_date.tr("\n", "").tr("\"", "").split(/,/).sort.each.with_index(1) do |name, rank|
  str_worth = name.split(//).inject(0) { |sum, str| sum += str.ord - 64 }
  total_score += str_worth * rank
end

puts total_score
