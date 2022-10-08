import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
@injectable
class NavigationService {
  //to get global application context
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
}