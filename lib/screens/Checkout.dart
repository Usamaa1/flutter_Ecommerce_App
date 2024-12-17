import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/screens/AddCreditCard.dart';
import 'package:full_app/screens/AddDeliveryAddress.dart';
import 'package:full_app/widgets/CartBottomBar.dart';
import 'package:full_app/widgets/CheckoutCard.dart';
import 'package:full_app/widgets/MyAppBar.dart';

class Checkout extends StatefulWidget {
  const Checkout({
    super.key,
  });

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  var dropDownValue = "Choose city";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "Chekout",
        cartCount: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListCard(
              cardTitle: "Payment Options",
              cardItem: "000-00-0000",
              cartImage: FaIcon(FontAwesomeIcons.creditCard),
              linkText: "Change",
              linkFunc: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddCreditCard()));
              },
            ),
            ListCard(
              cardTitle: "Delivery Address",
              cardItem: "No delivery address",
              cartImage: FaIcon(FontAwesomeIcons.house),
              linkText: "Add+",
              linkFunc: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddDeliveryAddress(),
                    ));
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: CartBottomBar(
        totalPrice: 45000,
        shippingFees: 200,
      ),
    );
  }
}
