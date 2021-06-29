import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cardstrick/src/bloc/cards_trick_bloc.dart';
import 'package:cardstrick/src/view/theme/colors.dart';
import 'package:cardstrick/src/view/widgets/trick_card_widget.dart';

class ShuffleAnimationWidget extends StatelessWidget {
  const ShuffleAnimationWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocBuilder<TrickCardBloc, TrickCardState>(
      builder: (context, state) {
        return Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: width * 0.75),
            child: AspectRatio(
              aspectRatio: 1 / 2,
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 800),
                transitionBuilder: (widget, animation) =>
                    __transitionBuilder(widget, animation, state.animationDone),
                layoutBuilder: (widget, list) =>
                    Stack(children: [widget, ...list]),
                child: state.animationDone
                    ? TrickCardWidget(trickCard: state.cards[state.cardIndex])
                    : const CardBack(),
                switchInCurve: Curves.easeInBack,
                switchOutCurve: Curves.easeInBack.flipped,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget __transitionBuilder(
      Widget widget, Animation<double> animation, bool animationDone) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);

    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, widget) {
        final isUnder = (ValueKey(animationDone) != widget.key);
        var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1.0 : 1.0;
        final value =
            isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
        return Transform(
          transform: (Matrix4.rotationY(value)..setEntry(3, 0, tilt)),
          child: widget,
          alignment: Alignment.center,
        );
      },
    );
  }
}

class CardBack extends StatelessWidget {
  const CardBack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: light50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 1.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: medium200,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Image.asset(
            'assets/main_logo.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
