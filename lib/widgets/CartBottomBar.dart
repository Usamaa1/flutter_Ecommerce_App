import 'package:flutter/material.dart';
import 'package:full_app/screens/Checkout.dart';

class CartBottomBar extends StatelessWidget {
  final int totalPrice;
  final int shippingFees;
  const CartBottomBar({
    super.key,
    required this.totalPrice,
    required this.shippingFees,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurStyle: BlurStyle.outer,
              color: Color.fromARGB(178, 190, 195, 195),
              spreadRadius: 4,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
          border: Border(
            top: BorderSide(width: 1, color: Color.fromARGB(52, 182, 181, 181)),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Table(
                border: const TableBorder(
                    horizontalInside:
                        BorderSide(width: 1, color: Colors.black54)),
                children: [
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Total Price",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("$totalPrice"),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Shipping Fees"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${shippingFees ?? 0}"),
                      ),
                    ],
                  ),
                  TableRow(children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Sub Total",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${totalPrice + shippingFees}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                  ])
                ],
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Checkout(),
                      ));
                },
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
