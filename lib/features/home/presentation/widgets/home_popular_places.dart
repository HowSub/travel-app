import 'package:flutter/material.dart';

class HomePopularPlaces extends StatelessWidget {
  const HomePopularPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular places',
          style: TextStyle(
            color: Color(0xFF2F2F2F),
            fontFamily: 'Poppins-SemiBold',
            fontSize: 20,
          ),
        ),
        Text(
          'View all',
          style: TextStyle(
            color: Color(0xFF888888),
            fontFamily: 'Roboto',
            fontWeight: .w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
