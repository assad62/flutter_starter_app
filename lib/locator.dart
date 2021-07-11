import 'package:get_it/get_it.dart';
import 'common/navigation_service.dart';
import 'viewmodels/home_viewmodel.dart';



GetIt locator = GetIt.instance;

void setupLocator() {

   //navigation service for global app context
   locator.registerLazySingleton(() => NavigationService());
   locator.registerFactory(() => HomeModel());


}