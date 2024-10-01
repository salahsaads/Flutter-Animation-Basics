import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animated_Opacity extends StatefulWidget {
  const Animated_Opacity({super.key});

  @override
  State<Animated_Opacity> createState() => _Animated_OpacityState();
}

class _Animated_OpacityState extends State<Animated_Opacity> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Opacity"),
        backgroundColor: Colors.red,
      ),
      body: Column(children: [
        Spacer(),
        AnimatedOpacity(
            curve: Curves.fastOutSlowIn,
            duration: Duration(seconds: 1),
            opacity: opacityLevel,
            child: FlutterLogo(size: 150)),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (opacityLevel == 1.0) {
                    opacityLevel = 0.0;
                  } else {
                    opacityLevel = 1.0;
                  }
                });
              },
              child: Text("Animation"),
            ),
          ],
        ),
        Spacer()
      ]),
    );
  }
}
