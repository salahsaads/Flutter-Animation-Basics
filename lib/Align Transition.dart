import 'package:flutter/material.dart';

class Align_transition extends StatefulWidget {
  const Align_transition({super.key});

  @override
  State<Align_transition> createState() => _Align_transitionState();
}

class _Align_transitionState extends State<Align_transition>
    with SingleTickerProviderStateMixin {
  late Animation<AlignmentGeometry> alignment;
  late AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    alignment = Tween<AlignmentGeometry>(
            begin: Alignment.centerLeft, end: Alignment.centerRight)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Align Transition"), backgroundColor: Colors.red),
      body: Center(
        child: Column(
          children: [


          ///  AnimatedAlign(alignment: alignment.value, duration: duration)
            Expanded(
                child: Container(
              width: double.infinity,
              color: Colors.black,
              child: Stack(
                children: [
                  AlignTransition(
                      alignment: alignment, child: FlutterLogo(size: 150)),
                ],
              ),
            )),
            ElevatedButton(
                onPressed: () {
                  if (controller.status == Alignment.centerRight) {
                    controller.reverse();
                  } else {
                    controller.forward();
                  }
                },
                child: const Text("Animation"))
          ],
        ),
      ),
    );
  }
}
