import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTextField extends StatelessWidget {
  const HomeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color(0xFF2F2F2F),
      decoration: InputDecoration(
        suffixIconConstraints: const BoxConstraints(
          maxHeight: 48,
          maxWidth: 80,
        ),
        suffixIcon: IntrinsicWidth(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 30,
                child: VerticalDivider(
                  width: 5,
                  color: Color(0xFFD2D2D2),
                  thickness: 1,
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                child: SvgPicture.asset(
                  'assets/images/vector/search_settings_vector.svg',
                ),
              ),
              const SizedBox(width: 30),
            ],
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 31, vertical: 20),
        hintText: 'Search places',
        hintStyle: TextStyle(
          color: Color(0xFF888888),
          fontFamily: 'Roboto',
          fontWeight: .w600,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color(0xFFD2D2D2), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color(0xFFD2D2D2), width: 2),
        ),
      ),
    );
  }
}
