import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:boo_vie/app/app.dart';
import 'package:boo_vie/app/locator/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Logger.level = Level.debug;

  setupLocator();

  runApp(const BooVieApp());
}
