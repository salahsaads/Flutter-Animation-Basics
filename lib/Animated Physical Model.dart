import 'package:flutter/material.dart';

class Animated_Physical_Model extends StatefulWidget {
  const Animated_Physical_Model({super.key});

  @override
  State<Animated_Physical_Model> createState() =>
      _Animated_Physical_ModelState();
}

class _Animated_Physical_ModelState extends State<Animated_Physical_Model> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Animated Physical Model"),
          backgroundColor: Colors.red),
      body: Center(
        child: Column(
          children: [
            AnimatedPhysicalModel(
                duration: const Duration(seconds: 1),
                shape: BoxShape.circle,
                shadowColor: _isPressed ? Colors.black : Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
                color: _isPressed ? Colors.black : Colors.red,
                elevation: _isPressed ? 50 : 20,
                child: FlutterLogo(size: 100)),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isPressed = !_isPressed;
                  });
                },
                child: const Text("Animation"))
          ],
        ),
      ),
    );
  }
}
