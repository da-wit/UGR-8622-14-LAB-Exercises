import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.example.myapplication.R

class MainActivity : AppCompatActivity() {
    private var count = 0
    private var countTextView: TextView? = null
    private var incrementButton: Button? = null
    private var decrementButton: Button? = null
    private var resetButton: Button? = null
    protected override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        countTextView = findViewById(R.id.countTextView)
        incrementButton = findViewById(R.id.incrementButton)
        decrementButton = findViewById(R.id.decrementButton)
        resetButton = findViewById(R.id.resetButton)

        // Set initial count value
        updateCountTextView()

        // Set click listeners for buttons
        incrementButton!!.setOnClickListener {
            count++
            updateCountTextView()
        }
        decrementButton!!.setOnClickListener {
            count--
            updateCountTextView()
        }
        resetButton!!.setOnClickListener {
            count = 0
            updateCountTextView()
        }
    }

    private fun updateCountTextView() {
        countTextView!!.text = count.toString()
    }
}
