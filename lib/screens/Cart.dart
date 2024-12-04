import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/widgets/MyAppBar.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
                title: Text('Item $index'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("\$ 400"),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.minus,
                              size: 14,
                            )),
                        const Text('2'),
                        IconButton(
                            onPressed: () {},
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
