fun main() {
    var sum = 0
    for (i in 1..50) {
        if (i % 2 == 0) {
            sum += i
        }
    }
    println("sum of all even num from 1 to 50 is: $sum")
}


fun main() {
    fun isPrime(num: Int): Boolean {
        if (num <= 1) return false
        var i = 2
        while (i * i <= num) {
            if (num % i == 0) return false
            i++
        }
        return true
    }

    val start = 10
    val end = 50
    var current = start

    println("Prime nums b/n $start and $end are:")
    while (current <= end) {
        if (isPrime(current)) {
            println(current)
        }
        current++
    }
}


fun main() {
    fun isPalindrome(number: Int): Boolean {
        var originalNumber = number
        var reversedNumber = 0
        var remainder: Int

        while (originalNumber != 0) {
            remainder = originalNumber % 10
            reversedNumber = reversedNumber * 10 + remainder
            originalNumber /= 10
        }
        return number == reversedNumber
    }

    val num = 12321

    if (isPalindrome(num)) {
        println("$num is a palindrome.")
    } else {
        println("$num is not a palindrome.")
    }
}


