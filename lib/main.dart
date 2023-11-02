import 'package:flutter/material.dart';
import 'package:jeilowin/config/router/app__router.dart';
import 'package:jeilowin/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
 // Codigo de Leo Paredes :))
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).theme(),
      
      routerConfig: appRouter,
      );
    }
  }