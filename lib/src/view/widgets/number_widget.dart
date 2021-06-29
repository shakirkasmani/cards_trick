import 'package:flutter/material.dart';

import 'package:cardstrick/src/view/theme/colors.dart';

class NumberWidget extends StatelessWidget {
  final int number;

  const NumberWidget({
    Key key,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: white,
          // border: Border.all(color: Colors.deepPurple.shade800, width: 2.0),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            number.toString(),
            style: TextStyle(
              color: primaryDark800,
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
        ),
      ),
    );
  }
}
