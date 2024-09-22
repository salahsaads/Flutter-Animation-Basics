import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Screen1()));
          },
          child: Text("Go"))
    ]));
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
                tween: IntTween(begin: 1, end: 100),
                duration: Duration(seconds: 60),
                builder: (BuildContext context, value, child) {
                  return Text(
                    value.toString(),
                    style: TextStyle(
                        fontSize: 150,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade300),
                  );
                })
          ],
        ),
      ),
    );
  }
}

class MyTween<T> {
  T begin;
  T end;
  MyTween({
    required this.begin,
    required this.end,
  });
}


//builder > كل اللي جواها بيترن من اول وجديد

//child:>> دي مش بتبني من اول وجديد