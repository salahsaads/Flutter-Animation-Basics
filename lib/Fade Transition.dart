import 'package:flutter/material.dart';

class Fade_transition extends StatefulWidget {
  const Fade_transition({super.key});

  @override
  State<Fade_transition> createState() => _Fade_transitionState();
}

class _Fade_transitionState extends State<Fade_transition>
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
        title: const Text("Fade Transition"),
        backgroundColor: Colors.red,
      ),
      body: Column(children: [
        const Spacer(),
        FadeTransition(opacity: _animation, child: const FlutterLogo(size: 150)),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {

                if (_animation.value == 0.0) {
                  parent.forward();
                } else {
                  parent.reverse();
                }
              },
              child: const Text("Animation"),
            ),
          ],
        ),
        const Spacer()
      ]),
    );
  }
}
