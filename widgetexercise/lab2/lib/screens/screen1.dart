import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        leading: const Icon(Icons.question_mark),
        title: const Text('Tracker'),
        actions: const [Icon(Icons.notifications_sharp), Icon(Icons.settings)],
      ),
      body: Container(
        // padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: Image.asset(
                      'assets/solo leveling.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Robert steven'),
                      Row(
                        children: [
                          Icon(
                            Icons.car_rental,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(" 0911 22 222 222")
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  const Text(
                    "Log out",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 20,
              color: Colors.blue,
              child: const Text(
                "online | battry : 90%",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                children: const [
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.map,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text('Map'),
                        Text("All devices")
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text('Live location'),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.history,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text('History'),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.stream,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text('set_Geoference'),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.info_outline_rounded,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text('detail info'),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text('edit'),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone_android_rounded,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text('Change phone'),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.key,
                          size: 40,
                          color: Color.fromARGB(255, 82, 78, 78),
                        ),
                        Text('diseabled menu'),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.more_time_rounded,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text('set time'),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.restart_alt,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text('Map'),
                        Text("restart")
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.battery_saver,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text('power save'),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text('normal mode'),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
