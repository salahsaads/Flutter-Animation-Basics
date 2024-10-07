import 'package:flutter/material.dart';

class Slide_transition extends StatefulWidget {
  const Slide_transition({super.key});

  @override
  State<Slide_transition> createState() => _Slide_transitionState();
}

class _Slide_transitionState extends State<Slide_transition>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> position;
  late AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    position = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(.5, 0),
    ).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Slide Transition"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                  child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  SlideTransition(
                    position: position,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.black,
                    ),
                  ),
                ],
              )),
              ElevatedButton(
                  onPressed: () {
                    if (position.status == AnimationStatus.completed) {
                      controller.reverse();
                    } else {
                      controller.forward();
                    }
                  },
                  child: Text('Animation'))
            ],
          ),
        ));
  }
}
