let maxNum : Int = 10000
var sum = 0

for i in 1...maxNum {
  if (i % 3 == 0 || i % 5 == 0) {
    sum += i
  }
}

print(sum)
