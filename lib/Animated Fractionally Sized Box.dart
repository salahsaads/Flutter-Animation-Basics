import 'package:flutter/material.dart';

class Animated_Fractionally_Sized_Box extends StatefulWidget {
  const Animated_Fractionally_Sized_Box({super.key});

  @override
  State<Animated_Fractionally_Sized_Box> createState() =>
      _Animated_Physical_ModelState();
}

class _Animated_Physical_ModelState
    extends State<Animated_Fractionally_Sized_Box> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated_Fractionally_Sized_Box"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.green,
            ),
            Flexible(
                child: AnimatedFractionallySizedBox(
              duration: Duration(seconds: 5),
              heightFactor: isPressed ? 0 : 1,
            )),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.red,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
                child: const Text("Animation"))
          ],
        ),
      ),
    );
  }
}
