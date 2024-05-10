import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class MyAlbumPage extends StatefulWidget {
  const MyAlbumPage({super.key});

  @override
  State<MyAlbumPage> createState() => _MyAlbumPageState();
}

class _MyAlbumPageState extends State<MyAlbumPage> {
  List<String> imagePath = [
    'assets/album/NewJeans_NewJeans.png',
    'assets/album/ShavedFish_JohnLennon.png',
    'assets/album/StandUp_JethroTull.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemWidth: 300,
        itemHeight: 300,
        loop: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imagePath[index])),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        layout: SwiperLayout.STACK,
        itemCount: imagePath.length,
      ),
    );
  }
}
