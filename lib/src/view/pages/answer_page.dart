import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cardstrick/src/bloc/cards_trick_bloc.dart';
import 'package:cardstrick/src/routes/router.gr.dart';
import 'package:cardstrick/src/view/widgets/animated_answer.dart';
import 'package:cardstrick/src/view/widgets/background_widget.dart';

class AnswerPage extends StatelessWidget {
  const AnswerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => _willPopCallback(context),
      child: Scaffold(
        body: BlocBuilder<TrickCardBloc, TrickCardState>(
          builder: (context, state) {
            return SafeArea(
              child: BackgroundWidget(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          'Your Number is',
                          style: Theme.of(context).textTheme.headline2,
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AnimatedAnswer(number: state.numberValue),
                        ElevatedButton(
                          onPressed: () => _playAgain(context),
                          child: Text(
                            'PLAY AGAIN',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<bool> _willPopCallback(BuildContext context) async {
    _playAgain(context);
    return Future.value(true);
  }

  void _playAgain(BuildContext context) {
    context.read<TrickCardBloc>().add(
          TrickCardEvent.started(),
        );
    ExtendedNavigator.of(context)
        .popUntil((route) => route.settings.name == Routes.startPage);
  }
}
