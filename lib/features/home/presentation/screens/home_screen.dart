import 'package:flutter/material.dart';
import 'package:travel/features/home/presentation/widgets/home_travel_list.dart';
import 'package:travel/features/home/presentation/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

              const SizedBox(height: 32),

              HomePopularPlaces(),

              const SizedBox(height: 40),

              HomeCategoryList(),

              const SizedBox(height: 45),

              HomeTravelList(),

              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}
