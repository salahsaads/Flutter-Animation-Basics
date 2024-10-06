import 'dart:math';

import 'package:flutter/material.dart';

class Animated_slide extends StatefulWidget {
  const Animated_slide({super.key});

  @override
  State<Animated_slide> createState() => _Animated_slideState();
}

//Animated_slide لازما تكون داخل ستاك
class _Animated_slideState extends State<Animated_slide> {
  bool isShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated Slide'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                  child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  AnimatedSlide(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    offset: isShow ? Offset(0, 0) : Offset(.5, -1),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.black,
                    ),
                  ),
                ],
              )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isShow = !isShow;
                    });
                  },
                  child: Text('Animation'))
            ],
          ),
        ));
  }
}
