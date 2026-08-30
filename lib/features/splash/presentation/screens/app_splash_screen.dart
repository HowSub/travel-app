import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AppSplashScreen extends StatefulWidget {
  const AppSplashScreen({super.key});

  @override
  State<AppSplashScreen> createState() => _AppSplashScreenState();
}

class _AppSplashScreenState extends State<AppSplashScreen> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 3), (mounted) {
      context.go('/home');
      mounted.cancel();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0172B2), Color(0xFF001645)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Travel',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 44,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 15),
                SvgPicture.asset('assets/images/vector/earth_icon_vector.svg'),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              'Find Your Dream',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: .w500,
              ),
            ),
            Text(
              'Destination With Us',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: .w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
