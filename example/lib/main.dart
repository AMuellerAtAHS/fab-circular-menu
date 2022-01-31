import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAB Circular Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartScreen(),
    );
  }
}

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _count = 0;

  void incrementCount() {
    setState(() {
      _count++;
    });
  }

  void decrementCount() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Please Click on Floating Menu Button"),
            Text(
              "$_count",
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
      floatingActionButton: FabCircularMenu(
        children: [
          IconButton(
            onPressed: incrementCount,
            icon: const Icon(Icons.add),
            tooltip: "add 1 to the counter",
          ),
/*           IconButton(
            onPressed: decrementCount,
            icon: const Icon(Icons.remove),
            tooltip: "remove 1 from the counter",
          ), */
        ],
      ),
    );
  }
}
