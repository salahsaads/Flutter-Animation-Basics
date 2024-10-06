import 'package:flutter/material.dart';

class Animated_Rotation extends StatefulWidget {
  const Animated_Rotation({super.key});

  @override
  State<Animated_Rotation> createState() => _Animated_RotationState();
}

class _Animated_RotationState extends State<Animated_Rotation> {
  double _angle = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Animated Rotation',
        ),
      ),
      body: Column(
        children: [
          const Spacer(),
          AnimatedRotation(
              alignment: Alignment.topRight, // مركز اللفه
              turns: _angle, //عدد اللفات
              // curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: const Center(child: FlutterLogo(size: 150))),
          GestureDetector(
            onTap: () => setState(() => _angle -= 1),
            child: const Icon(
              Icons.rotate_left_outlined,
              size: 50,
            ),
          ),
          GestureDetector(
              onTap: () => setState(() => _angle += 1),
              child: const Icon(Icons.rotate_right_outlined, size: 50)),
          const Spacer(),
        ],
      ),
    );
  }
}
