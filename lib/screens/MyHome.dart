import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_app/widgets/MyAppBar.dart';
import 'package:full_app/widgets/MyCards.dart';
import 'package:full_app/widgets/MyCarouselSlider.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Map<int, bool> heartIconState = {};
  Map<int, bool> cartIconState = {};
  int cCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        cartCount: cCount,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyCarouselSlider(
              myImageList: [
                'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
                'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
                'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80'
              ],
            ),
            GridView.builder(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 234),
              itemCount: 8,
              itemBuilder: (context, index) {
                heartIconState.putIfAbsent(index, () => true);
                cartIconState.putIfAbsent(index, () => false);
                return MyCards(
                  imageName:
                      "https://plus.unsplash.com/premium_photo-1681336999500-e4f96fe367f8?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  cardTitle: "Iphone 16",
                  cardPrice: "400",
                  cardRating: 3.4,
                  cardCategory: "Electronics",
                  heartIcon: heartIconState[index]!
                      ? FontAwesomeIcons.heart
                      : FontAwesomeIcons.solidHeart,
                  heartIconColor:
                      heartIconState[index]! ? 0xffffffff : 0xffee5253,
                  heartIconFunc: () {
                    setState(() {
                      heartIconState[index] = !heartIconState[index]!;
                    });
                  },
                  cartIcon: cartIconState[index]!
                      ? FontAwesomeIcons.minus
                      : FontAwesomeIcons.plus,
                  cartBgColor: cartIconState[index]! ? 0xff636e72 : 0xff000000,
                  addToCartFunc: () {
                    setState(() {
                      cartIconState[index] = !cartIconState[index]!;
                     cartIconState[index]! ? cCount++ : cCount--;
                      print(cCount);
                    });
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
