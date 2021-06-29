import 'dart:math';

import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

import 'package:cardstrick/src/view/widgets/animated_count.dart';

class AnimatedAnswer extends StatefulWidget {
  final int number;

  const AnimatedAnswer({Key key, this.number}) : super(key: key);

  @override
  _AnimatedAnswerState createState() => _AnimatedAnswerState();
}

class _AnimatedAnswerState extends State<AnimatedAnswer> {
  bool animationComplete = false;
  final _animationDuration = Duration(milliseconds: 100);

  Future<void> showNumber() async {
    await Future.delayed(
      Duration(seconds: 3),
    );
    setState(() {
      animationComplete = true;
    });
  }

  @override
  void initState() {
    super.initState();
    showNumber();
  }

  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(
      _animationDuration,
      builder: (context) {
        final num = Random().nextInt(63);
        return Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 200,
          child: animationComplete
              ? Text(
                  widget.number.toString(),
                  style: Theme.of(context).textTheme.headline1,
                )
              : AnimatedDefaultTextStyle(
                  duration: _animationDuration,
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        // color: primary500,
                        fontSize: num.toDouble() + 30,
                      ),
                  child: AnimatedCount(
                    count: num,
                    duration: Duration(milliseconds: 100),
                  ),
                ),
        );
      },
    );
  }
}
