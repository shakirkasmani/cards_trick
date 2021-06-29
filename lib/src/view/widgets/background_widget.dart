import 'package:flutter/material.dart';

import 'package:cardstrick/src/view/theme/colors.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/background.png'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          medium100.withOpacity(0.3),
          BlendMode.dstATop,
        ),
      )),
      child: child,
    );
  }
}
