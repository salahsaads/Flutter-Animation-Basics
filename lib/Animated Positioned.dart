import 'package:flutter/material.dart';

class Animated_positioned extends StatefulWidget {
  const Animated_positioned({super.key});

  @override
  State<Animated_positioned> createState() => _Animated_positionedState();
}

class _Animated_positionedState extends State<Animated_positioned> {
  bool isTrue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Positioned"),
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Column(children: [
          Expanded(
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  height: isTrue ? 50 : 200,
                  width: isTrue ? 200 : 50,
                  left: isTrue ? 100 : 0,
                  top: isTrue ? 0 : 100,
                  child: Container(
                    width: 200,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isTrue = !isTrue;
                });
              },
              child: const Text("Animate"))
        ])));
  }
}
