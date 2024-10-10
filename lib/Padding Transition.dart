import 'package:flutter/material.dart';

class Padding_Transition extends StatefulWidget {
  const Padding_Transition({super.key});

  @override
  State<Padding_Transition> createState() => _Padding_TransitionState();
}

class _Padding_TransitionState extends State<Padding_Transition>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    animation = Tween(begin: 0.0, end: 100.0).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding Transition"),
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: Column(
        children: [
          AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Padding(
                  padding: EdgeInsets.all(animation.value),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                );
              }),
          Spacer(),
          ElevatedButton(
              onPressed: () {
                if (controller.value == 0.0) {
                  controller.forward();
                } else {
                  controller.reverse();
                }
              },
              child: Text("Animation")),
        ],
      )),
    );
  }
}
