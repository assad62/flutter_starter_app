import 'package:get_it/get_it.dart';
import 'package:notlar_flutter/viewmodels/home_viewmodel.dart';
import 'common/navigation_service.dart';



GetIt locator = GetIt.instance;

void setupLocator() {

   //navigation service for global app context
   locator.registerLazySingleton(() => NavigationService());
   locator.registerFactory(() => HomeModel());


}