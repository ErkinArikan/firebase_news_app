import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

//TODO: Burdaki contex.padding low vs bout ayarlamaları Kartal'dan gelmektedir
//TODO: Bu kodu tekrar tekrar kullanabilirsin carousel için.

class CaroselImage extends StatelessWidget {
  final List<String> imageUrls = [
    'https://picsum.photos/id/237/800/400',
    'https://picsum.photos/id/238/800/400',
    'https://picsum.photos/id/239/800/400',
    'https://picsum.photos/id/240/800/400',
    'https://picsum.photos/id/241/800/400',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items:
          imageUrls.map((url) {
            return Container(
              margin: context.padding.low,
              width: context.sized.mediumValue * 100, // Yaklaşık %40 genişlik
              decoration: BoxDecoration(
                borderRadius:
                    context.border.roundedRectangleAllBorderNormal.borderRadius,
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
      options: CarouselOptions(
        height: context.sized.highValue * 4.5, // yaklaşık %25 ekran yüksekliği
        enlargeCenterPage: true, // Ortadaki kartı büyüt
        viewportFraction: 0.8, // Her resim ekranın %70'ini kaplasın
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
      ),
    );
  }
}
