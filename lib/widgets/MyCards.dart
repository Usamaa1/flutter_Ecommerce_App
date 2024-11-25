import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/widgets/IconButton.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 250,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff95a5a6),
            blurRadius: 8,
            spreadRadius: 0,
          ),
        ],
        color: Color(0xfff1f2f6),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
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
                  icon: FaIcon(FontAwesomeIcons.heart))
            ],
          ),
         const SizedBox(
            height: 8,
          ),
          const Text(
            "Sokan Sofa",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$ 40,000",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
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
          MyIconButton(
            buttonVPadding: 8,
            buttonHPadding: 12,
            buttonIcon: FontAwesomeIcons.cartShopping,
            buttonIconSize: 14,
            buttonText: "Add to Cart",
            buttonFunc: () {},
          )
        ],
      ),
    );
  }
}
