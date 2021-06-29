import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedNumber {
  static final _rng = Random();

  final double size;
  final int num;
  final double opacity;
  final Alignment alignment;

  AnimatedNumber()
      : size = _rng.nextDouble() * 40 + 50,
        num = _rng.nextInt(63),
        opacity = _rng.nextDouble(),
        alignment = Alignment(
          _rng.nextDouble() * 2 - 1,
          _rng.nextDouble() * 2 - 1,
        );
}
