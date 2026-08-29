import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Hi, David 👋',
                style: TextStyle(fontSize: 30, fontWeight: .w600),
              ),
            ),
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/profile_image.png'),
            ),
          ],
        ),
        Text(
          'Explore the world',
          style: TextStyle(fontSize: 20, color: Color(0xFF888888)),
        ),
      ],
    );
  }
}
