import 'package:boo_vie/app/locator/locator.dart';
import 'package:boo_vie/app/services/router_service.dart';
import 'package:boo_vie/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

abstract class CustomBaseViewModel extends BaseViewModel {
  final RouterService _routerService = locator<RouterService>();

  void pop() => _routerService.router.pop();

  void removeFocus() => FocusManager.instance.primaryFocus?.unfocus();

  ScaffoldFeatureController showSnackBar(BuildContext context, {required String message}) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message),backgroundColor: primaryRed));
}
