import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_app/functions/validators.dart';
import 'package:full_app/widgets/MyAppBar.dart';

class AddCreditCard extends StatefulWidget {
  const AddCreditCard({super.key});

  @override
  State<AddCreditCard> createState() => _AddCreditCardState();
}

class _AddCreditCardState extends State<AddCreditCard> {
  final creditCardForm = GlobalKey<FormState>();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expirationDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  void creditCardFormSubmit() {
    if (creditCardForm.currentState?.validate() ?? false) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Credit Card Added Successfully"),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Please fill in all fields correctly"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "Add Card",
        cartCount: 0,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: creditCardForm,
            child: Column(
              children: [
                TextFormField(
                  controller: cardNumberController,
                  decoration: const InputDecoration(
                    labelText: "Card Number",
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: validateCardNumber,
                ),
                TextFormField(
                  controller: expirationDateController,
                  decoration:
                      InputDecoration(labelText: "Expiration Date (MM/YY)"),
                  validator: validateExpirationDate,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9-]'))
                  ],
                ),
                TextFormField(
                  controller: cvvController,
                  decoration: InputDecoration(
                      helperText: "123",
                      labelText: "CVV",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff000)),
                          borderRadius: BorderRadius.circular(10))),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: validateCVV,
                ),
                ElevatedButton(
                  onPressed: creditCardFormSubmit,
                  child: Text('Add Credit Card'),
                )
              ],
            )),
      )),
    );
  }
}
