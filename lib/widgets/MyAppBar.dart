import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final int? cartCount;
  const MyAppBar({
    super.key,
    this.cartCount,
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
      title: Text("My App Bar"),
      actions: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.cartShopping),
              onPressed: () {},
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: Color.fromARGB(255, 132, 132, 255),
              child: Text(
                "${widget.cartCount}",
                style: TextStyle(color: Color(0xffffffff), fontSize: 12),
              ),
            )
          ],
        )
      ],
    );
    ;
  }
}
