LONGITUDINAL = 20
BESIDE       = 20
def factorial(range)
  range.inject(1) { |project, n| project * n}
end

puts factorial((1..LONGITUDINAL+BESIDE))/(factorial(1..LONGITUDINAL) * factorial(1..BESIDE))
