import 'package:flutter/material.dart';
import 'package:quran1/Animated%20Padding.dart';
import 'package:quran1/Padding%20Transition.dart';
import 'package:quran1/Positioned%20Directional%20Transition.dart';

/// Flutter code sample for [AnimatedContainer].

void main() => runApp(const AnimatedContainerExampleApp());

class AnimatedContainerExampleApp extends StatelessWidget {
  const AnimatedContainerExampleApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Padding_Transition(),
      ),
    );
  }
}
