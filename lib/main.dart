import 'package:box_q/core/di_service/dependency_injection_service.dart';
import 'package:box_q/my_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjectionService.initDependency();
  runApp(const MyApp());
}