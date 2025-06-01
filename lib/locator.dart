import 'package:get_it/get_it.dart';
import 'package:stroll/services/navigation_service.dart';
import 'package:stroll/services/size_config.dart';
import 'package:stroll/view_model/home_screen_view_model.dart';
import 'package:stroll/view_model/main_screen_view_model.dart';
import 'package:stroll/view_model/theme_view_model.dart';

GetIt locator = GetIt.instance;
final navigationService = locator<NavigationService>();
final sizeConfig = locator<SizeConfig>();
Future<void> setUpLocator() async {
  locator.registerSingleton(NavigationService());
  locator.registerSingleton(SizeConfig());

  locator.registerFactory(()=>AppTheme());
  locator.registerFactory(()=>MainScreenViewModel());
  locator.registerFactory(()=>HomeScreenViewModel());

}
