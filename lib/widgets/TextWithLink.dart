import 'package:flutter/material.dart';

class TextWithLink extends StatelessWidget {
  final String? simpleText;
  final String? linkText;
  final double? textFontSize;
  final double? topBottomSpacing;
  final int? linkColor;
  final int? textColor;
  final MainAxisAlignment? horizontalAlignment;
  final bool underlineLink = true;
  final bool isLink;
  final bool isPushReplacement;
  final Widget? pageRoute;

  const TextWithLink({
    super.key,
    this.simpleText,
    this.linkText,
    this.textFontSize,
    this.topBottomSpacing,
    this.linkColor,
    this.textColor,
    this.horizontalAlignment,
    this.isLink = false,
    this.pageRoute,
    this.isPushReplacement = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topBottomSpacing ?? 20, bottom: topBottomSpacing ?? 20),
      child: Row(
        mainAxisAlignment: horizontalAlignment ?? MainAxisAlignment.center,
        children: [
          Text(
            simpleText ?? '',
            style: TextStyle(
              color: Color(textColor ?? 0xff2d3436),
              fontSize: textFontSize ?? 18,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          if (isLink == true)
            InkWell(
              child: Text(
                linkText!,
                style: TextStyle(
                  fontSize: textFontSize ?? 18,
                  color: Color(linkColor ?? 0xff0984e3),
                  decoration:
                      underlineLink != true ? TextDecoration.underline : null,
                ),
              ),
              onTap: () {
                if (isPushReplacement == true) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => pageRoute!),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pageRoute!),
                  );
                }
              },
            )
        ],
      ),
    );
  }
}
