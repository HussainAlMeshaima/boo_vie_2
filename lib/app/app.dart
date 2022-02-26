import 'package:flutter/material.dart';
import 'package:boo_vie/app/locator/locator.dart';
import 'package:boo_vie/app/services/router_service.dart';

class BooVieApp extends StatelessWidget {
  const BooVieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RouterService _routerService = locator<RouterService>();

    return MaterialApp.router(
      title: "BooVie",
      routeInformationParser: _routerService.router.defaultRouteParser(),
      routerDelegate: _routerService.router.delegate(),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
