import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';

class Screen3 extends StatelessWidget {
  // String title;
  // const Screen3(this.title);
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 223, 223),
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          children: [Icon(Icons.arrow_back), Text('Order Details')],
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
            color: Colors.white,
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Container(
                  height: 70,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(170, 112, 211, 115),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                        size: 40,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Completed',
                              style: TextStyle(color: Colors.blue),
                            ),
                            Text('Order Completed 24 July 2024')
                          ]),
                      const Spacer(),
                      Icon(
                        Icons.keyboard_arrow_right_outlined,
                        size: 30,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Order Id'), Spacer(), Text('#52')],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Order date '),
                    Spacer(),
                    Text('20 July 2024')
                  ],
                )
              ],
            )),
        SizedBox(
          height: 10,
        ),
        Container(
            color: Colors.white,
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text('Purchased Items'),
                Row(
                  children: [
                    Image.asset(
                      'assets/solo leveling.png',
                      height: 50,
                      width: 100,
                    ),
                    const Column(
                      children: [
                        Text('Blue t-shirt'),
                        Text('Size: L'),
                        Text('50.00')
                      ],
                    ),
                    const Spacer(),
                    const Column(
                      children: [Text('Color: yellow'), Text('Qty:1')],
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/solo leveling.png',
                      height: 50,
                      width: 100,
                    ),
                    const Column(
                      children: [
                        Text('Hoodie ROse'),
                        Text('Size: L'),
                        Text('50.00')
                      ],
                    ),
                    const Spacer(),
                    const Column(
                      children: [Text('Color: yellow'), Text('Qty:1')],
                    )
                  ],
                ),
              ],
            )),
        const SizedBox(height: 10),
        Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.white,
            child: (const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Shiping Information', style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [Text('Name'), Spacer(), Text('jacob Jones')],
                ),
                Row(
                  children: [
                    Text('Phone Number'),
                    Spacer(),
                    Text('(105)555_3652')
                  ],
                ),
                Row(
                  children: [Text('Address'), Spacer(), Text('6140 Sunbrook')],
                ),
                Row(
                  children: [Text('Shipment'), Spacer(), Text('Economy')],
                ),
              ],
            ))),
        const SizedBox(
          height: 10,
        ),
        Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.white,
            child: const Column(
              children: [
                Text('Payment Information', style: TextStyle(fontSize: 20)),
                Row(
                  children: [
                    Text('Payment Method'),
                    Spacer(),
                    Text('cash on delivery')
                  ],
                ),
              ],
            ))
      ]),
    );
  }
}
