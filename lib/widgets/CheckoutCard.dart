import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListCard extends StatelessWidget {
  final Widget? cartImage;
  final String cardTitle;
  final String? cardItem;
  final String? linkText;
  const ListCard(
      {super.key,
      required this.cardTitle,
      this.cardItem,
      this.linkText,
      this.cartImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(4),
      child: Card(
        elevation: 2,
        child: ListTile(
          leading: cartImage ??
              const FaIcon(
                FontAwesomeIcons.creditCard,
                size: 40,
              ),
          title: Text(
            cardTitle,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          subtitle: Text(cardItem ?? "No Card Added"),
          trailing: InkWell(
            child: Text(
              linkText ?? "Add",
              style:const TextStyle(
                color: Colors.blueAccent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
