import 'package:flutter/material.dart';

class Animated_Builder extends StatefulWidget {
  const Animated_Builder({super.key});

  @override
  State<Animated_Builder> createState() => _Animated_BuilderState();
}

class _Animated_BuilderState extends State<Animated_Builder>
    with SingleTickerProviderStateMixin {
  late Animation<Color?> animation;
  late AnimationController animationController;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    animation =
        ColorTween(begin: Colors.red, end: Colors.blue).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Builder"),
      ),
      body: Column(
        children: [
          AnimatedBuilder(
            animation: animation,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Text 1"),
                Text("Text 2"),
                Text("Text 3"),
              ],
            ),
            builder: (BuildContext context, Widget? child) {
              return Container(
                width: 250,
                height: 250,
                color: animation.value,
                child: child,
              );
            },
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  animationController.forward();
                },
                child: const Text("Forward"),
              ),
              ElevatedButton(
                onPressed: () {
                  animationController.reverse();
                },
                child: const Text("Forward"),
              ),
              ElevatedButton(
                onPressed: () {
                  animationController.stop();
                },
                child: const Text("Stop"),
              )
            ],
          )
        ],
      ),
    );
  }
}
