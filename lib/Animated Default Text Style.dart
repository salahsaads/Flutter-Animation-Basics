import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animated_Default_Text_Style extends StatefulWidget {
  const Animated_Default_Text_Style({super.key});

  @override
  State<Animated_Default_Text_Style> createState() =>
      _Animated_Default_Text_StyleState();
}

class _Animated_Default_Text_StyleState
    extends State<Animated_Default_Text_Style> {
  TextStyle style = TextStyle(
      fontSize: 50,
      color: Colors.red,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animated Default Text Style"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            children: [
              Spacer(),
              AnimatedDefaultTextStyle(
                duration: Duration(seconds: 1),
                style: style,
                curve: Curves.fastOutSlowIn,
                child: Text(
                  'Salah Saad',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Spacer(), //Text('Salah Saad',)
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      style = TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontFamily: 'Cairo');
                    });
                  },
                  child: Text("Animation")),
              Spacer(),
            ],
          ),
        ));
  }
}
