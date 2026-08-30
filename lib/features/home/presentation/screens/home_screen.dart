import 'package:flutter/material.dart';
import 'package:travel/features/home/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 34),
          child: Column(
            children: [
              HomeHeader(),
              const SizedBox(height: 38),
              HomeTextField(),
              
            ],
          ),
        ),
      ),
    );
  }
}
