import 'package:flutter/material.dart';
import 'package:quran1/Animated%20Padding.dart';
import 'package:quran1/Padding%20Transition.dart';
import 'package:quran1/Positioned%20Directional%20Transition.dart';

import 'Align Transition.dart';
import 'Animated Fractionally Sized Box.dart';
import 'Animated Physical Model.dart';
import 'Scale Transition.dart';

/// Flutter code sample for [AnimatedContainer].

void main() => runApp(const AnimatedContainerExampleApp());

class AnimatedContainerExampleApp extends StatelessWidget {
  const AnimatedContainerExampleApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Scaletransition(),
      ),
    );
  }
}
