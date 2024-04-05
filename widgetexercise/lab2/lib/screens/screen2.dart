import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: const Icon(Icons.arrow_back_rounded),
        actions: const [
          SearchBar(
            constraints: BoxConstraints(maxWidth: 300, minHeight: 50),
            leading: Icon(Icons.search),
            hintText: 'Serach',
          ),
          Icon(Icons.store),
          Icon(Icons.notifications_active_sharp)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Image.asset('assets/solo leveling.png'),
              const Positioned(
                left: 0,
                right: 0,
                // top: 0,
                bottom: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.stacked_bar_chart,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "market palce",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.swap_horizontal_circle_sharp,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "Switch",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.social_distance_sharp,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "contact",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.energy_savings_leaf_sharp,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "Powers in Watt",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '\$ 8.5',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                width: 250,
              ),
              Icon(
                Icons.favorite,
                size: 25,
              )
            ],
          ),
          const Text('solo leving the best anime', textAlign: TextAlign.start),
          const Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text("5.0(353)"),
              SizedBox(
                width: 20,
              ),
              Text("|"),
              SizedBox(
                width: 20,
              ),
              Text("540 sales"),
              SizedBox(
                width: 20,
              ),
              Text("|"),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.place),
              Text("brookly")
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 20,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 203, 203, 203)),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Variant",
              style: TextStyle(fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("size :"),
                Text(
                  "Xs",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(2),
                width: 50,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  border: Border(
                      bottom: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      top: BorderSide(width: 1)),
                ),
                child: const Center(
                    child: Text(
                  "xs",
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(2),
                width: 50,
                height: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  border: Border(
                      bottom: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      top: BorderSide(width: 1)),
                ),
                child: const Center(
                    child: Text(
                  "S",
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(2),
                width: 50,
                height: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  border: Border(
                      bottom: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      top: BorderSide(width: 1)),
                ),
                child: const Center(
                    child: Text(
                  "M",
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(2),
                width: 50,
                height: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  border: Border(
                      bottom: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      top: BorderSide(width: 1)),
                ),
                child: const Center(
                    child: Text(
                  "L",
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(2),
                width: 50,
                height: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  border: Border(
                      bottom: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      top: BorderSide(width: 1)),
                ),
                child: const Center(
                    child: Text(
                  "XL",
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(2),
                width: 50,
                height: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  border: Border(
                      bottom: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      top: BorderSide(width: 1)),
                ),
                child: const Center(
                    child: Text(
                  "XXL",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Colors:"),
                Text(
                  "Red",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                width: 50,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  border: Border(
                      bottom: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      top: BorderSide(width: 1)),
                ),
                child: const Center(
                    child: Text(
                  "Red",
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                width: 50,
                height: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  border: Border(
                      bottom: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      top: BorderSide(width: 1)),
                ),
                child: const Center(
                    child: Text(
                  "Black",
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                width: 50,
                height: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  border: Border(
                      bottom: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      top: BorderSide(width: 1)),
                ),
                child: const Center(
                    child: Text(
                  "Green",
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                width: 50,
                height: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  border: Border(
                      bottom: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      top: BorderSide(width: 1)),
                ),
                child: const Center(
                    child: Text(
                  "White",
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                width: 50,
                height: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  border: Border(
                      bottom: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      top: BorderSide(width: 1)),
                ),
                child: const Center(
                    child: Text(
                  "Blue",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ],
          ),
          const Divider(),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(Icons.message),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Add to shopping cart")),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
