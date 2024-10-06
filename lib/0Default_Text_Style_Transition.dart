import 'package:flutter/material.dart';

class Default_Text_Style_Transition extends StatefulWidget {
  const Default_Text_Style_Transition({super.key});

  @override
  State<Default_Text_Style_Transition> createState() =>
      _Default_Text_Style_TransitionState();
}

class _Default_Text_Style_TransitionState
    extends State<Default_Text_Style_Transition> with TickerProviderStateMixin {
  late Animation<TextStyle> _animation;
  late AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      reverseDuration: const Duration(seconds: 5),
    );
    _animation = TextStyleTween(
            begin: const TextStyle(color: Colors.red),
            end: const TextStyle(color: Colors.blue))
        .animate(
            CurvedAnimation(parent: animationController, curve: Curves.easeIn));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animated Default Text Style"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              DefaultTextStyleTransition(
                style: _animation,
                child: const Text(
                  'Salah Saad',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              const Spacer(), //Text('Salah Saad',)
              ElevatedButton(
                  onPressed: () {
                    animationController.value == 0.0
                        ? animationController.forward()
                        : animationController.reverse();
                  },
                  child: const Text("Animation")),
              const Spacer(),
            ],
          ),
        ));
  }
}
