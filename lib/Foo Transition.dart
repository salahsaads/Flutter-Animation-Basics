import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> with TickerProviderStateMixin {
  late Animation<AlignmentGeometry> _greenTween;
  late Animation<AlignmentGeometry> _redTween;
  late AnimationController _parent;
  late AnimationController _parent1;

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _parent.dispose();
    _parent1.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _parent = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      reverseDuration: const Duration(seconds: 5),
    );
    _parent1 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      reverseDuration: const Duration(seconds: 5),
    );
    _greenTween = Tween<AlignmentGeometry>(
            begin: Alignment.topCenter, end: Alignment.bottomCenter)
        .animate(CurvedAnimation(
            parent: _parent,
            curve: Curves.easeInCubic,
            reverseCurve: Curves.bounceOut));
    _redTween = Tween<AlignmentGeometry>(
            begin: Alignment.centerLeft, end: Alignment.centerRight)
        .animate(_parent1);

    // _parent.addStatusListener((status) {
    //   if (_parent.status == AnimationStatus.completed) {
    //     _parent1.forward();
    //   }
    //   if (_parent1.status == AnimationStatus.dismissed) {
    //     _parent.reverse();
    //   }
    // });

    // _greenTween.value; بعرف وصل لفين
    //_parent.value;


    //_greenTween.addListener(() => setState(() {}));
    //_parent1.addListener(() => setState(() {}));
    //_parent.removestatusListener(() => setState(() {}));
    //_parent1.removeListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    //Animation<double> scale = Tween<double>(begin: 0.0, end: 1.0).animate();
    // Animation<AlignmentGeometry> alignment = Tween<AlignmentGeometry>(
    //         begin: Alignment.topRight, end: Alignment.centerLeft)
    //     .animate();
    // Animation<RelativeRect> rect = RelativeRectTween().animate();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Foo Transition'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          // ScaleTransition(scale: scale)
          // PositionedTransition(rect: rect, child: child)
          // AlignTransition(alignment: alignment, child: child)

          Expanded(
              child: Stack(
            children: [
              AlignTransition(
                alignment: _greenTween,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                ),
              ),
              AlignTransition(
                alignment: _redTween,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                ),
              )
            ],
          )),
          Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _parent.forward();
                    },
                    child: Text('f')),
                ElevatedButton(
                    onPressed: () {
                      _parent.reverse();
                    },
                    child: Text('R')),
                ElevatedButton(
                    onPressed: () {
                      _parent.stop();
                    },
                    child: Text('s')),
                ElevatedButton(
                    onPressed: () {
                      _parent.reset();
                    },
                    child: Text('R'))
              ],
            ),
          ),
          Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _parent.repeat();
                    },
                    child: Text('R')),
                ElevatedButton(
                    onPressed: () {
                      _parent.repeat(reverse: true);
                    },
                    child: Text('R'))
              ],
            ),
          )
        ],
      ),
    );
  }
}


//parant ==animation controller