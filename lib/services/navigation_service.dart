import 'package:flutter/material.dart';

class NavigationService {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<dynamic> pushScreen(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> popAndPushScreen(String routeName, {dynamic arguments}) {
    navigatorKey.currentState!.pop();
    return pushScreen(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementScreen(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  void popScreen() {
    navigatorKey.currentState!.pop();
  }

  Future<dynamic> removeAllAndPush(
      String routeName,
      String tillRoute, {
        dynamic arguments,
      }) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      ModalRoute.withName(tillRoute),
      arguments: arguments,
    );
  }
}
