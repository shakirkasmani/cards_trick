import 'package:auto_route/auto_route_annotations.dart';

import 'package:cardstrick/src/view/pages/activity_page.dart';
import 'package:cardstrick/src/view/pages/answer_page.dart';
import 'package:cardstrick/src/view/pages/start_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: StartPage, initial: true),
    MaterialRoute(page: ActivityPage),
    MaterialRoute(page: AnswerPage),
  ],
)
class $Router {}
