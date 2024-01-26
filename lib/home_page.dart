import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value_1 = 0;
  int value_2 = 0;

  int get sum => value_1 + value_2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.control_point),
        title: const Text("My App"),
        backgroundColor: Color.fromARGB(38, 0, 70, 22),
        actions: const [
          Icon(Icons.notification_add),
          Icon(Icons.settings),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Số thứ 1',
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 111, 1, 255),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      value_1--;
                    });
                  },
                  icon: const Icon(Icons.remove),
                ),
                const SizedBox(width: 10),
                Text(
                  '$value_1',
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 184, 8, 8),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    setState(() {
                      value_1++;
                    });
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const Text(
              'Số thứ 2',
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 111, 1, 255),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      value_2--;
                    });
                  },
                  icon: const Icon(Icons.remove),
                ),
                const SizedBox(width: 10),
                Text(
                  '$value_2',
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 184, 8, 8),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    setState(() {
                      value_2++;
                    });
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            Text(
              'Tổng số thứ 1 và số thứ 2 = $sum',
              style: const TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 111, 1, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
