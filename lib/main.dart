import 'package:flutter/material.dart';
import 'package:flutter_starter_app/injection.dart';
import 'common/navigation_service.dart';
import 'ui/router.dart';
import 'ui/views/home_view.dart';

void main() {
  configureDependencies();
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

