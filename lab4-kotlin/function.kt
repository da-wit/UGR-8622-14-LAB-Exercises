fun sortArray(arr: IntArray): IntArray {
    for (i in arr.indices) {
        for (j in 0 until arr.size - i - 1) {
            if (arr[j] > arr[j + 1]) {
                val temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
    return arr
}

fun main() {
   
    val arr = intArrayOf(5, 3, 8, 4, 2,3,6,3,33,33)
    val sortedArr = sortArray(arr)
    println("Sorted array: ${sortedArr.joinToString(", ")}")
}


fun factorial(n: Int): Int {
    return if (n <= 1) 1 else n * factorial(n - 1)
}

fun main() {
    val num = 6
    val result = factorial(num)
    println("Factorial of $num is $result")
}



fun hasUniqueCharacters(str: String): Boolean {
    val charSet = mutableSetOf<Char>()
    for (char in str) {
        if (!charSet.add(char)) {
            return false
        }
    }
    return true
}

fun main() {
    // Example strings
    val str1 = "abcdef"
    val str2 = "hello"

    println("Does \"$str1\" have all unique characters? ${hasUniqueCharacters(str1)}")
    println("Does \"$str2\" have all unique characters? ${hasUniqueCharacters(str2)}")
}