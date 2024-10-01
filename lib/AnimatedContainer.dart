
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double height = 100;
  double width = 100;
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: AnimatedContainer(
            curve: Curves.fastOutSlowIn,
            duration: const Duration(seconds: 10),
            width: width,
            height: height,
            color: color,
          ),
        ),
        const Spacer(),
        ElevatedButton(
            onPressed: () {
              setState(() {
                if (height == 100) {
                  height = 200;
                  width = 200;
                  color = Colors.green;
                } else {
                  height = 100;
                  width = 100;
                  color = Colors.red;
                }
              });
            },
            child: const Text("Click"))
      ],
    ));
  }
}
