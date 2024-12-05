import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/widgets/MyAppBar.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int cartCount = 1;
  TextEditingController cont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        cartCount: 0,
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Card(
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(40)
              // ),
              elevation: 4,
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: ListTile(
                tileColor: const Color(0xfff5f6fa),
                leading: Image.network(
                    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
                title: Text(
                  'Product $index',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("\$ 400"),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (cartCount > 1) {
                                  cartCount--;
                                  cont.text = cartCount.toString();
                                }
                              });
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.minus,
                              size: 14,
                            )),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    height: 300,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Add Quantity",
                                            style: TextStyle(fontSize: 22),
                                          ),
                                          TextField(
                                            controller: cont,
                                          ),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Text("Update Quantity"))
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(10)),
                            width: 25,
                            child: Text(
                              cartCount.toString(),
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                cartCount++;
                                cont.text = cartCount.toString();
                              });
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.plus,
                              size: 14,
                            )),
                      ],
                    )
                  ],
                ),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.delete)),
              ),
            );
          }),
    );
  }
}
