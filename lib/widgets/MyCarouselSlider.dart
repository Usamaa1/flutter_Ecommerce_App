import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarouselSlider extends StatelessWidget {
  final List<String> myImageList;
  final int? autoplayInterval;
  final bool? autoplay;
  final double? imageHeight;

  const MyCarouselSlider(
      {super.key,
      required this.myImageList,
      this.autoplayInterval,
      this.autoplay,
      this.imageHeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // width: double.infinity,
          child: CarouselSlider(
            items:
                myImageList.map((imageURL) => Image.network(imageURL)).toList(),

            // items: [
            //   Image.network(
            //     'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
            //   ),
            //   Image.network(
            //     'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
            //   ),
            //   Image.network(
            //     'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
            //   ),
            //   Image.network(
            //     'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
            //   ),
            //   // Image.network(
            //   //   'https://images.unsplash.com/photo-1732198246934-f7973362f51c?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
            //   // ),
            // ],
            options: CarouselOptions(
                autoPlay: autoplay ?? true,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
                height: imageHeight ?? MediaQuery.of(context).size.height * 0.4,
                autoPlayInterval: Duration(seconds: autoplayInterval ?? 8)
                // aspectRatio: 1.0,
                ),
          ),
        ),
      ],
    );
  }
}
