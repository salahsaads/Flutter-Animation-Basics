import 'package:flutter/material.dart';

class Positioned_transition extends StatefulWidget {
  const Positioned_transition({super.key});

  @override
  State<Positioned_transition> createState() => _Positioned_transitionState();
}

class _Positioned_transitionState extends State<Positioned_transition>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
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
          title: const Text("Positioned Transition"),
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Column(children: [
          Expanded(
            child: Stack(
              children: [
                AnimatedBuilder(
                    animation: animation,
                    builder: (context, child) {
                      return Positioned(
                        top: 100 * animation.value,
                        left: 100 - 100 * animation.value,
                        height: 150 * animation.value + 50,
                        width: 200 - 150 * animation.value,
                        child: child!,
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      color: Colors.red,
                    )),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                controller.value == 0.0
                    ? controller.forward()
                    : controller.reverse();
              },
              child: const Text("Animate"))
        ])));
  }
}
