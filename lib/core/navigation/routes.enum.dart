import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/index.dart';
import 'package:patterns_guide_app/features/home/home.dart';

enum Routes {
  home  (url: HomePage.route, page: HomePage() ),
  desingPatternsMenuPage  (url: DesingPatternsMenuPage.route, page: DesingPatternsMenuPage() ),
  exercisesPage  (url: ExercisesMainPage.route, page: ExercisesMainPage() );

  const Routes({ 
    required String url,
    required Widget page,
  }) : _url = url,
       _page = page;

  final String _url;
  String get url => _url;

  final Widget _page;
  Widget get page => _page;

}