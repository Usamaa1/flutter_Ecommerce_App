import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/screens/ProductDescription.dart';
import 'package:full_app/widgets/CartButton.dart';

class MyCards extends StatelessWidget {
  final VoidCallback? heartIconFunc;
  final VoidCallback? addToCartFunc;
  final VoidCallback? gestureFunc;
  final String imageName;
  final String cardTitle;
  final String? cardCategory;
  final String cardPrice;
  final double? cardRating;
  final IconData? heartIcon;
  final IconData? cartIcon;
  final int? heartIconColor;
  final int? cartBgColor;
  final int? cartIconColor;
  const MyCards({
    super.key,
    this.heartIconFunc,
    this.addToCartFunc,
    this.gestureFunc,
    required this.imageName,
    required this.cardTitle,
    this.cardCategory,
    required this.cardPrice,
    this.cardRating,
    this.heartIcon,
    this.cartIcon,
    this.cartBgColor,
    this.cartIconColor,
    this.heartIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ProductDescription()));
      },
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff95a5a6),
              blurRadius: 8,
              spreadRadius: 0,
            ),
          ],
          color: Color(0xfff1f2f6),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(imageName),
                ),
                IconButton(
                    color: Color(heartIconColor ?? 0xffffffff),
                    style: IconButton.styleFrom(
                        iconSize: 18,
                        backgroundColor: const Color.fromARGB(83, 0, 0, 0)),
                    onPressed: heartIconFunc,
                    icon: FaIcon(heartIcon ?? FontAwesomeIcons.heart))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 9),
              child: Text(
                cardTitle,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (cardCategory != null)
                    Text(
                      cardCategory!,
                      style: const TextStyle(
                          fontSize: 14, color: Color(0xff747d8c)),
                    ),
                  if (cardRating != null)
                    Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.solidStar,
                          size: 16,
                          color: Color(0xfff1c40f),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text("$cardRating"),
                      ],
                    )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ $cardPrice",
                    style: const TextStyle(
                      color: Color(0xff0984e3),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (addToCartFunc != null)
                    CartButton(
                      cartBgColor: cartBgColor,
                      cartIcon: cartIcon,
                      cartFunc: addToCartFunc!,
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
