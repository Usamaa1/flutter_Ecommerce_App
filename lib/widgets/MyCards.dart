import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/screens/ProductDescription.dart';
import 'package:full_app/widgets/CartButton.dart';
import 'package:full_app/widgets/IconButton.dart';

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
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDescription()));
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
                  child: Image.network(
                    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
                  ),
                ),
                IconButton(
                    color: Colors.white,
                    style: IconButton.styleFrom(
                        iconSize: 18,
                        backgroundColor: const Color.fromARGB(83, 0, 0, 0)),
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.heart))
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 9),
              child: Text(
                "Sokan Sofa",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category Name",
                    style: TextStyle(fontSize: 14, color: Color(0xff747d8c)),
                  ),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidStar,
                        size: 16,
                        color: Color(0xfff1c40f),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text("3.4"),
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
                  const Text(
                    "\$ 40,0000",
                    style: TextStyle(
                      color: Color(0xff0984e3),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CartButton(
                    cartFunc: () {},
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