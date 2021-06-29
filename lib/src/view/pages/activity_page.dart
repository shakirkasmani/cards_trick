import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:cardstrick/src/bloc/cards_trick_bloc.dart';
import 'package:cardstrick/src/routes/router.gr.dart';
import 'package:cardstrick/src/view/theme/colors.dart';
import 'package:cardstrick/src/view/widgets/flip_animation.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: medium100,
      body: BlocConsumer<TrickCardBloc, TrickCardState>(
        listenWhen: (p, c) => p.done != c.done,
        listener: (context, state) {
          if (state.done) {
            ExtendedNavigator.of(context).push(Routes.answerPage);
          }
        },
        builder: (context, state) {
          final cards = state.cards;
          return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10, top: 30, right: 10, bottom: 10),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        FakeCards(),
                        // const ShuffleAnimationWidget(),
                        const FlipAnimation(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    'Is your number is on this card?',
                    style: Theme.of(context).textTheme.headline5,
                    maxLines: 1,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: state.animationDone
                              ? () => context.read<TrickCardBloc>().add(
                                  TrickCardEvent.notAppeared(
                                      cards[state.cardIndex]))
                              : () {},
                          child: Text('NO'),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: state.animationDone
                              ? () => context.read<TrickCardBloc>().add(
                                  TrickCardEvent.appeared(
                                      cards[state.cardIndex]))
                              : () {},
                          child: Text('YES'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class FakeCards extends StatelessWidget {
  const FakeCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          color: Colors.deepPurple.shade200,
          borderRadius: BorderRadius.circular(16)),
      constraints: BoxConstraints(
          maxHeight: height * 0.65, maxWidth: (height * 0.75) / 2 * 1.1),
    );
  }
}
