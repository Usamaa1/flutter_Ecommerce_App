import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/screens/Cart.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final int? cartCount;
  final String? title;
  const MyAppBar({
    super.key,
    this.cartCount,
    this.title,
  });

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child: Text(widget.title ?? "My App Bar")),
      actions: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.cartShopping),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Cart()));
              },
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: const Color.fromARGB(255, 132, 132, 255),
              child: Text(
                "${widget.cartCount}",
                style: const TextStyle(color: Color(0xffffffff), fontSize: 12),
              ),
            )
          ],
        )
      ],
    );
  }
}
