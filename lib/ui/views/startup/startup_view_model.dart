import 'package:flutter/material.dart';
import 'package:boo_vie/app/core/custom_base_view_model.dart';
import 'package:boo_vie/app/locator/locator.dart';
import 'package:boo_vie/app/router/router.dart';
import 'package:boo_vie/app/services/router_service.dart';

class StartupViewModel extends CustomBaseViewModel {
  final RouterService _routerService = locator<RouterService>();

  Future<void> init() async {
    WidgetsBinding.instance!.addPostFrameCallback((Duration duration) async {
      await navigateToHomeView();
    });
  }

  Future navigateToHomeView() async {
    await _routerService.router.push(const LoginRoute(),);
  }
}
