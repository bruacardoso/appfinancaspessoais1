import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';
import '../extensions/sizes.dart';
import 'greetings_widget.dart'; // Importei o GreetingsWidget como exemplo

class AppHeader extends StatefulWidget {
  const AppHeader({
    Key? key,
    this.title,
    this.suffixOption = false,
    this.preffixOption = false,
    this.onPressed,
  }) : _withBackground = true, super(key: key);

  const AppHeader.noBackground({
    Key? key,
    this.title,
    this.suffixOption = false,
    this.preffixOption = false,
    this.onPressed,
  }) : _withBackground = false, super(key: key);

  final String? title;
  final bool suffixOption;
  final bool preffixOption;
  final VoidCallback? onPressed;
  final bool _withBackground;

  @override
  _AppHeaderState createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
  Widget get _child => widget.title != null
      ? Text(
          widget.title!,
          textAlign: TextAlign.center,
          style: AppTextStyles.mediumText18.apply(
            color: widget._withBackground ? AppColors.white : AppColors.blackGrey,
          ),
        )
      : const GreetingsWidget(); // Exemplo usando GreetingsWidget como padrão

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (widget._withBackground)
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.purpleTwo,
                    AppColors.purpleOne,
                  ], // Gradiente roxo definido
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(500, 30),
                  bottomRight: Radius.elliptical(500, 30),
                ),
              ),
              height: 287.h,
            ),
          ),
        Positioned(
          left: 24.0.w,
          right: 24.0.w,
          top: 74.h,
          child: _child,
        ),
        if (widget.preffixOption)
          Positioned(
            left: 8.0.w,
            top: 56.h,
            child: GestureDetector(
              onTap: widget.onPressed ?? () => Navigator.pop(context),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        if (widget.suffixOption)
          Positioned(
            right: 8.0.w,
            top: 56.0.h,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                Icons.more_horiz,
                color: AppColors.white,
              ),
            ),
          ),
      ],
    );
  }
}

