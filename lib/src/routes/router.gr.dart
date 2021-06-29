// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../view/pages/activity_page.dart';
import '../view/pages/answer_page.dart';
import '../view/pages/start_page.dart';

class Routes {
  static const String startPage = '/';
  static const String activityPage = '/activity-page';
  static const String answerPage = '/answer-page';
  static const all = <String>{
    startPage,
    activityPage,
    answerPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startPage, page: StartPage),
    RouteDef(Routes.activityPage, page: ActivityPage),
    RouteDef(Routes.answerPage, page: AnswerPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartPage(),
        settings: data,
      );
    },
    ActivityPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ActivityPage(),
        settings: data,
      );
    },
    AnswerPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AnswerPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushStartPage() => push<dynamic>(Routes.startPage);

  Future<dynamic> pushActivityPage() => push<dynamic>(Routes.activityPage);

  Future<dynamic> pushAnswerPage() => push<dynamic>(Routes.answerPage);
}
