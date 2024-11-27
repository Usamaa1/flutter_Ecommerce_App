import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartButton extends StatelessWidget {
  final IconData? cartIcon;
  final int? cartBgColor;
  final int? cartIconColor;
  final VoidCallback cartFunc;
  const CartButton({
    super.key,
    this.cartIcon,
    this.cartBgColor,
    this.cartIconColor,
    required this.cartFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
          color: Color(cartBgColor ?? 0xff2d3436),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: IconButton(
        onPressed: cartFunc,
        icon: FaIcon(
          cartIcon ?? FontAwesomeIcons.add,
          color: Color(cartIconColor ?? 0xfff1f2f6),
        ),
      ),
    );
  }
}
