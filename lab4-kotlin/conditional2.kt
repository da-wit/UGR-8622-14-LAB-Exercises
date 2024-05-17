fun main() {
    
    fun determineSeason(month: Int, day: Int): String {
        return when (month) {
            12 -> if (day >= 21) "Winter" else "Fall"
            1, 2 -> "Winter"
            3 -> if (day >= 20) "Spring" else "Winter"
            4, 5 -> "Spring"
            6 -> if (day >= 21) "Summer" else "Spring"
            7, 8 -> "Summer"
            9 -> if (day >= 22) "Fall" else "Summer"
            10, 11 -> "Fall"
            else -> "Invalid month"
        }
    }

    val month = 5
    val day = 15

    val season = determineSeason(month, day)
    println("The season on $month/$day is $season")
}



fun main() {
    fun findLargest(num1: Int, num2: Int, num3: Int): Int {
        return if (num1 >= num2) {
            if (num1 >= num3) {
                num1
            } else {
                num3
            }
        } else {
            if (num2 >= num3) {
                num2
            } else {
                num3
            }
        }
    }


    val num1 = 25
    val num2 = 42
    val num3 = 17

    
    val largest = findLargest(num1, num2, num3)
    println("The largest number among $num1, $num2, and $num3 is $largest")
}
