import 'package:flutter/material.dart';
import '../warna/custom_warna.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/LogoClass2.png',
          height: 20,
        ),
        const SizedBox(width: 8),
        const Text(
          'CLASS',
          style: TextStyle(
            fontFamily: 'Poppins-ExtraBold',
            color: CustomColors.appPurple3,
            fontSize: 18,
          ),
        ),
        const Text(
          ' SCHEDULER',
          style: TextStyle(
            fontFamily: 'Poppins-Regular',
            color: CustomColors.appPurple1,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
