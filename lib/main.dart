import 'package:flutter/material.dart';
import 'package:jeilowin/config/theme/app_theme.dart';
import 'package:jeilowin/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
 // Codigo de Leo Paredes :))
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).theme(),
      home:  const HomeScreen(),
      );
    }
  }