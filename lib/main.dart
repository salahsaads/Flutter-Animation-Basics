import 'package:flutter/material.dart';
import 'package:quran1/0Default_Text_Style_Transition.dart';

import 'Animated Default Text Style.dart';
import 'Animated Slide.dart';

/// Flutter code sample for [AnimatedContainer].

void main() => runApp(const AnimatedContainerExampleApp());

class AnimatedContainerExampleApp extends StatelessWidget {
  const AnimatedContainerExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Animated_slide(),
      ),
    );
  }
}
