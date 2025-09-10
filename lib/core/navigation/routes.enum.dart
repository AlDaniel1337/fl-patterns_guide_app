import 'package:patterns_guide_app/features/home/home.dart';

enum Routes {
  home  (url: HomePage.route );

  const Routes({ 
    required String url 
  }) : _url = url;

  final String _url;
  String get url => _url;
}