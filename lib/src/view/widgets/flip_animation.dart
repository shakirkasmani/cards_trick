import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cardstrick/src/bloc/cards_trick_bloc.dart';
import 'package:cardstrick/src/view/widgets/animated_shuffle.dart';
import 'package:cardstrick/src/view/widgets/trick_card_widget.dart';

class FlipAnimation extends StatelessWidget {
  const FlipAnimation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = FlipCardController();

    return BlocBuilder<TrickCardBloc, TrickCardState>(
      buildWhen: (p, c) => p.animationDone != c.animationDone,
      builder: (context, state) {
        final cards = state.cards;
        final height = MediaQuery.of(context).size.height;
        _controller.toggleCard();
        return Center(
          child: Container(
            constraints: BoxConstraints(maxHeight: height * 0.75),
            child: AspectRatio(
              aspectRatio: 1 / 2,
              child: FlipCard(
                controller: _controller,
                speed: 500,
                flipOnTouch: false,
                front: TrickCardWidget(
                  trickCard: cards[state.cardIndex],
                ),
                back: const CardBack(),
              ),
            ),
          ),
        );
      },
    );
  }
}
