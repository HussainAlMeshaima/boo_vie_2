import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:boo_vie/app/app.dart';
import 'package:boo_vie/app/locator/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Sets logging level
  Logger.level = Level.debug;

  /// Register all the models and services before the app starts
  setupLocator();

  /// Runs the app :)
  runApp(const BooVieApp());
}
