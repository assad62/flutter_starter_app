import 'package:flutter/material.dart';
import 'common/navigation_service.dart';
import 'locator.dart';
import 'ui/router.dart';
import 'ui/views/home_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: locator<NavigationService>().navigatorKey,
      title: 'Flutter Demo',
      initialRoute: 'home',
      onGenerateRoute: AppRouter.generateRoute,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}

