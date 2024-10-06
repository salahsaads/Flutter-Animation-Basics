import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rotation_Transition extends StatefulWidget {
  const Rotation_Transition({super.key});

  @override
  State<Rotation_Transition> createState() => _Rotation_TransitionState();
}

class _Rotation_TransitionState extends State<Rotation_Transition>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController parent;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    parent = AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _animation = Tween<double>(begin: 0, end: 1).animate(parent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rotation Transition"),
        backgroundColor: Colors.red,
      ),
      body: Column(children: [
        const Spacer(),
        RotationTransition(
            alignment: Alignment.topRight,
            turns: _animation,
            child: const FlutterLogo(size: 150)),
        const Spacer(),
        ElevatedButton(
          onPressed: () {
            parent.value == 0 ? parent.forward() : parent.reverse();
          },
          child: const Text("Animation"),
        ),
        const Spacer()
      ]),
    );
  }
}
