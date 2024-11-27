import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyIconButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback buttonFunc;
  final IconData? buttonIcon;
  final int? buttonBGColor;
  final int? buttonFGColor;
  final double? buttonVPadding;
  final double? buttonHPadding;
  final double? buttonIconSize;
  const MyIconButton({
    super.key,
    required this.buttonText,
    required this.buttonFunc,
    this.buttonIcon,
    this.buttonBGColor,
    this.buttonFGColor,
    this.buttonVPadding,
    this.buttonHPadding,
    this.buttonIconSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: buttonVPadding ?? 12,
          horizontal: buttonHPadding ?? 30,
        ),
        backgroundColor: Color(buttonBGColor ?? 0xff3742fa),
        foregroundColor: Color(buttonFGColor ?? 0xfff1f2f6),
      ),
      onPressed: buttonFunc,
      label: Text(
        buttonText,
        style: const TextStyle(fontSize: 16),
      ),
      icon: buttonIcon != null
          ? FaIcon(
              buttonIcon,
              size: buttonIconSize,
            )
          : null,
    );
  }
}
