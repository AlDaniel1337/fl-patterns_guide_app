import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/core/navigation/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Patterns App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Navigation.home,
      getPages: Navigation.getRoutes(),
      navigatorKey: Get.key,
    );
  }
}