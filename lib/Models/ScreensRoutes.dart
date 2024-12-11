import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/screens/Cart.dart';
import 'package:full_app/screens/MyHome.dart';

class ScreensRoutes {
  static List<Map<String, dynamic>> screens = [
    {
      "icon": FontAwesomeIcons.house,
      "title": 'Home',
      "screens": const MyHome(),
    },
    {
      "icon": FontAwesomeIcons.cartShopping,
      "title": 'My Cart',
      "screens": const Cart(),
    },
  ];
}
