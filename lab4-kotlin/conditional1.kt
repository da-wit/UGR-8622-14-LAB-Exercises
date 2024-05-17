fun main(){
     fun determineTriangleType(s1: Double, s2: Double, s3: Double): String {
        return when {
            s1 == s2 && s2 == s3 -> "Equilateral"
            s1 == s2 || s2 == s3 || s1 == s3 -> "Isosceles"
            else -> "Scalene"
        }
    }

    
    val s1 = 5.0
    val s2 = 5.0
    val s3 = 3.9

    
    val triangle = determineTriangleType(s1, s2, s3)
    println(triangle)
}


fun main() {
   
    fun calsalary(hoursWorked: Double, hourlyRate: Double): Double {
        val regularHours = if (hoursWorked > 40) 40.0 else hoursWorked
        val overtimeHours = if (hoursWorked > 40) hoursWorked - 40.0 else 0.0
        val overtimeRate = hourlyRate * 1.5

        return (regularHours * hourlyRate) + (overtimeHours * overtimeRate)
    }

   
    val hoursWorked = 45.0
    val hourlyRate = 20.0

    
    val totalSalary = calsalary(hoursWorked, hourlyRate)
    println(totalSalary)
}