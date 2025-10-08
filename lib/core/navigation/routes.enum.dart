import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/desing_patterns/presentation/details/details.page.dart';
import 'package:patterns_guide_app/features/desing_patterns/presentation/menus/patterns_menu.dart';
import 'package:patterns_guide_app/features/index.dart';
import 'package:patterns_guide_app/features/home/home.dart';
import 'package:patterns_guide_app/features/japones/presentation/pages/pages.index.dart';
import 'package:patterns_guide_app/features/languages/japanese/presentation/pages/menus/topic_menu.page.dart';
import 'package:patterns_guide_app/features/languages/japanese/presentation/pages/topics/tipic.page.dart';
enum Routes {
  home  (url: HomePage.route, page: HomePage() ),
  
  desingPatternsMenuPage  (url: DesingPatternsMenuPage.route, page: DesingPatternsMenuPage() ),
  desingPatternsDetailsPage  (url: DesingPatternsDetailsPage.route, page: DesingPatternsDetailsPage() ),
  patternsMenuPage  (url: PatternsMenu.route, page: PatternsMenu() ),
  
  exercisesPage  (url: ExercisesMainPage.route, page: ExercisesMainPage() ),
  
  japaneseMenuPage  (url: JaponesMainPage.route, page: JaponesMainPage() ),
  japaneseParticlesPage  (url: ParticlesPage.route, page: ParticlesPage() ),
  japaneseParticlesMenuPage  (url: ParticlesMenuPage.route, page: ParticlesMenuPage() ),
  japaneseTopicsMenuPage  (url: TopicMenuPage.route, page: TopicMenuPage() ),
  japaneseTopicPage  (url: TopicPage.route, page: TopicPage() ),
  japaneseRandomPage  (url: JapaneseRandomPage.route, page: JapaneseRandomPage() );

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