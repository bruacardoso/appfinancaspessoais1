import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.purpleTwo,
            AppColors.purpleOne,
          ],
        ),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(30.0),
          right: Radius.circular(30.0),
        ),
      ),
      child: child,
    );
  }
}

