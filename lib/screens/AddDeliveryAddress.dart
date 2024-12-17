import 'package:flutter/material.dart';
import 'package:full_app/widgets/MyAppBar.dart';

class AddDeliveryAddress extends StatelessWidget {
  const AddDeliveryAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Add Address",
        cartCount: 0,
      ),
      body: Center(),
    );
  }
}
