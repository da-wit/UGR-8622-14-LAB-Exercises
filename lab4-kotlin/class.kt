class Rectangle(private val length: Double, private val width: Double) {

    fun perimeter(): Double {
        return 2 * (length + width)
    }

    fun area(): Double {
        return length * width
    }
}

fun main() {
    val rectangle = Rectangle(5.0, 3.0)
    println("Perimeter of the rectangle: ${rectangle.perimeter()}")
    println("Area of the rectangle: ${rectangle.area()}")
}


class Triangle(private val side1: Double, private val side2: Double, private val side3: Double) {

    fun type(): String {
        return when {
            side1 == side2 && side2 == side3 -> "Equilateral"
            side1 == side2 || side2 == side3 || side1 == side3 -> "Isosceles"
            else -> "Scalene"
        }
    }
}

fun main() {
    val triangle1 = Triangle(3.0, 3.0, 3.0)
    val triangle2 = Triangle(3.0, 4.0, 4.0)
    val triangle3 = Triangle(3.0, 4.0, 5.0)
    
    println("Triangle 1 is ${triangle1.type()}")
    println("Triangle 2 is ${triangle2.type()}")
    println("Triangle 3 is ${triangle3.type()}")
}


class ShoppingCart {

    private val items: MutableList<Pair<String, Double>> = mutableListOf()

    fun addItem(item: String, price: Double) {
        items.add(Pair(item, price))
    }

    fun removeItem(item: String) {
        val iterator = items.iterator()
        while (iterator.hasNext()) {
            val currentItem = iterator.next()
            if (currentItem.first == item) {
                iterator.remove()
                break
            }
        }
    }

    fun totalPrice(): Double {
        return items.sumOf { it.second }
    }

    fun listItems(): List<Pair<String, Double>> {
        return items.toList()
    }
}

fun main() {
    val cart = ShoppingCart()
    cart.addItem("Apple", 1.0)
    cart.addItem("Banana", 0.5)
    cart.addItem("Milk", 2.5)
    
    println("Items in the cart: ${cart.listItems()}")
    println("Total price: ${cart.totalPrice()}")

    cart.removeItem("Banana")
    println("Items in the cart after removal: ${cart.listItems()}")
    println("Total price after removal: ${cart.totalPrice()}")
}
