let maxNum : Int = 4000000
var fibonacciNumFast  = 1
var fibonacciNumLater = 2

var sum = 0
while fibonacciNumLater < 4000000 {
  if (fibonacciNumLater % 2 == 0) {
    sum += fibonacciNumLater
  }
  var nextNum = fibonacciNumFast + fibonacciNumLater
  fibonacciNumFast = fibonacciNumLater
  fibonacciNumLater = nextNum
}

print(sum)
