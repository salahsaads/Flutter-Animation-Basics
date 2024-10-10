import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Animated_Padding extends StatefulWidget {
  const Animated_Padding({super.key});

  @override
  State<Animated_Padding> createState() => _Animated_PaddingState();
}

class _Animated_PaddingState extends State<Animated_Padding> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Animated Padding",
        ),
      ),
      body: Center(
          child: Column(
        children: [
          AnimatedPadding(
            curve: Curves.easeOutSine,
            duration: Duration(seconds: 5),
            padding: EdgeInsets.all(isPressed ? 0 : 100),
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Spacer(),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isPressed = !isPressed;
                });
              },
              child: Text("Animation")),
        ],
      )),
    );
  }
}
