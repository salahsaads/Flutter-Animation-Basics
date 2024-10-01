import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Animated Default Text Style.dart';

/// Flutter code sample for [AnimatedContainer].

void main() => runApp(const AnimatedContainerExampleApp());

class AnimatedContainerExampleApp extends StatelessWidget {
  const AnimatedContainerExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Animated_Default_Text_Style(),
      ),
    );
  }
}
