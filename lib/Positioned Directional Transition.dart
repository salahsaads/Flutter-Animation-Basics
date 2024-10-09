import 'package:flutter/material.dart';

class Animated_Positioned_Directional_Transition extends StatefulWidget {
  const Animated_Positioned_Directional_Transition({super.key});

  @override
  State<Animated_Positioned_Directional_Transition> createState() =>
      _Animated_Positioned_Directional_TransitionState();
}

class _Animated_Positioned_Directional_TransitionState
    extends State<Animated_Positioned_Directional_Transition>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  bool isTrue = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    animation = Tween<double>(begin: 0, end: 1).animate(controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Positioned Directional Transition"),
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Column(children: [
          Expanded(
            child: Stack(
              children: [
                AnimatedBuilder(
                    child: Container(
                      width: 200,
                      height: 50,
                      color: Colors.red,
                    ),
                    animation: animation,
                    builder: (context, child) {
                      return PositionedDirectional(
                        top: 100 * animation.value,
                        start: 100 - 100 * animation.value,
                        width: 200 - 150 * animation.value,
                        height: 50 + 150 * animation.value,
                        child: child!,
                      );
                    })
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (animation.value == 0.0) {
                  controller.forward();
                } else {
                  controller.reverse();
                }
              },
              child: const Text("Animate"))
        ])));
    ();
  }
}
