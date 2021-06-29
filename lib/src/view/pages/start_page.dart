import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:cardstrick/injection.dart';
import 'package:cardstrick/src/bloc/cards_trick_bloc.dart';
import 'package:cardstrick/src/routes/router.gr.dart';
import 'package:cardstrick/src/view/widgets/background_widget.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<TrickCardBloc>(),
          child: _buildBody(context),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: BackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AutoSizeText(
                'Think a number between 1 and 63.',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<TrickCardBloc>().add(
                        TrickCardEvent.started(),
                      );
                  return ExtendedNavigator.of(context)
                      .push(Routes.activityPage);
                },
                child: Text('START'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
