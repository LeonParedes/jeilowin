import 'package:flutter/material.dart';
import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/../../presentation/providers/theme_provider.dart';


void main() {
   runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(themeNotifierProvider);
   return MaterialApp.router(
        title: 'Flutter Widgets',
        debugShowCheckedModeBanner: false,
        theme: appTheme.tema(),
        routerConfig: appRouter);
  }
 }

