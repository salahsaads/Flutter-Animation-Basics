import 'package:flutter/material.dart';

class Animated_Positioned_Directional extends StatefulWidget {
  const Animated_Positioned_Directional({super.key});

  @override
  State<Animated_Positioned_Directional> createState() =>
      _Animated_Positioned_DirectionalState();
}

class _Animated_Positioned_DirectionalState
    extends State<Animated_Positioned_Directional> {
  bool isTrue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Positioned Directional"),
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Column(children: [
          Expanded(
            child: Stack(
              children: [
                AnimatedPositionedDirectional(
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                  top: isTrue ? 0 : 100,
                  start: isTrue ? 100 : 0,
                  width: isTrue ? 200 : 50,
                  height: isTrue ? 50 : 200,
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
