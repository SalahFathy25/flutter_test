import 'package:flutter/material.dart';

import 'app/screens/home/home_view.dart';

final RouteObserver routeObserver = RouteObserver<PageRoute>();
Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      navigatorObservers: [routeObserver],
      themeMode: ThemeMode.system,
      home: const HomeView(),
    );
  }
}
