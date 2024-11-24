import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String headingText;
  final int? headingColor;
  final double? headingSize;
  final double? headingTopHeight;
  final double? headingBottomHeight;
  const HeadingText(
      {super.key,
      required this.headingText,
      this.headingColor,
      this.headingSize,
      this.headingTopHeight,
      this.headingBottomHeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: headingTopHeight ?? 40,
        ),
        Text(
          headingText,
          style: TextStyle(
              fontSize: headingSize ?? 44,
              fontWeight: FontWeight.bold,
              color: Color(headingColor ?? 0xFF2d3436)),
        ),
        SizedBox(
          height: headingBottomHeight ?? 60,
        ),
      ],
    );
  }
}
