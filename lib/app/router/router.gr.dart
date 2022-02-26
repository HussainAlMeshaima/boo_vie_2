// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:boo_vie/ui/views/home/home_view.dart' as _i2;
import 'package:boo_vie/ui/views/startup/startup_view.dart' as _i1;
import 'package:flutter/material.dart' as _i4;

class BooVieRouter extends _i3.RootStackRouter {
  BooVieRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    StartupRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.StartupView());
    },
    HomeRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: _i2.HomeView());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(StartupRoute.name, path: '/'),
        _i3.RouteConfig(HomeRoute.name, path: '/home-view')
      ];
}

/// generated route for
/// [_i1.StartupView]
class StartupRoute extends _i3.PageRouteInfo<void> {
  const StartupRoute() : super(StartupRoute.name, path: '/');

  static const String name = 'StartupRoute';
}

/// generated route for
/// [_i2.HomeView]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-view');

  static const String name = 'HomeRoute';
}
