import 'package:flutter/material.dart';
import 'package:full_app/widgets/DropdownInput.dart';
import 'package:full_app/widgets/HeadingText.dart';
import 'package:full_app/widgets/TextInput.dart';

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
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: HeadingText(
                headingText: "Enter Shipping Details",
                headingSize: 22,
              ),
            ),
            DropdownInput(
                value: dropDownValue.toString(),
                dropDownList: [
                  "Choose city",
                  'Karachi',
                  'Lahore',
                  'Islambad',
                  'Multan'
                ],
                changeFunc: (v) {
                  setState(() {
                    dropDownValue = v;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
