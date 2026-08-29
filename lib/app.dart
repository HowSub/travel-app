import 'package:flutter/material.dart';
import 'package:travel/config/routes/app_router.dart';
import 'package:travel/config/theme/app_theme.dart';

class Travel extends StatelessWidget {
  const Travel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routerConfig: appRouter,
    );
  }
}
