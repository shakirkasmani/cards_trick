import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:cardstrick/injection.dart';
import 'package:cardstrick/src/bloc/cards_trick_bloc.dart';
import 'package:cardstrick/src/routes/router.gr.dart';
import 'package:cardstrick/src/view/theme/theme.dart';

Future<void> main() async {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TrickCardBloc>(),
      child: MaterialApp(
        title: 'Cards Trick',
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        builder: ExtendedNavigator(router: Router()),
      ),
    );
  }
}
