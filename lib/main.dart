import 'package:stroll/view_model/theme_view_model.dart';
import 'package:stroll/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stroll/view/base_view.dart';
import 'package:flutter/services.dart' show SystemChrome, SystemUiOverlayStyle;
import 'package:stroll/router.dart' as router;
import 'package:stroll/constants/routing_constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setUpLocator();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return BaseView<AppTheme>(
      builder:
          (context, model, child) => MaterialApp(
            title: 'Rock Music',
            theme: Provider.of<AppTheme>(context).theme,
            debugShowCheckedModeBanner: false,
            navigatorKey: navigationService.navigatorKey,
            onGenerateRoute: router.generateRoute,
            initialRoute: Routes.mainScreen,
            onGenerateInitialRoutes: (String initialRouteName) {
              return [
                router.generateRoute(
                  const RouteSettings(name: Routes.mainScreen),
                ),
              ];
            },
          ),
    );
  }
}
