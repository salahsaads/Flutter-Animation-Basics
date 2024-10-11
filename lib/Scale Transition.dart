import 'package:flutter/material.dart';

class Scaletransition extends StatefulWidget {
  const Scaletransition({super.key});

  @override
  State<Scaletransition> createState() => _ScaletransitionState();
}

class _ScaletransitionState extends State<Scaletransition>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = Tween<double>(begin: 1, end: 2).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scale Transition"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            ScaleTransition(
                alignment: Alignment.topCenter,
                scale: animation,
                child: FlutterLogo(size: 150)),
            Spacer(),

            // AnimatedScale(scale: scale, duration: duration)
            ElevatedButton(
                onPressed: () {
                  if (controller.status == AnimationStatus.completed) {
                    controller.reverse();
                  } else {
                    controller.forward();
                  }
                },
                child: Text("Back")),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
