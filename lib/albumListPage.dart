import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AlbumListPage extends StatefulWidget {
  const AlbumListPage({super.key});

  @override
  State<AlbumListPage> createState() => _AlbumListPageState();
}

class _AlbumListPageState extends State<AlbumListPage> {
  int _currentIndex = 0;
  List<String> imagePath = [
    'assets/albums/NewJeans_NewJeans.png',
    'assets/albums/ShavedFish_JohnLennon.png',
    'assets/albums/StandUp_JethroTull.png',
    'assets/albums/Disintegration_TheCure.png'
  ];
  List<double> _scales = [1.0, 1.0, 1.0, 1.0]; // 각 이미지의 크기 상태를 저장하는 리스트

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                child: SvgPicture.asset(
                  'assets/logo.svg', 
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Swiper(
                  itemWidth: 300,
                  itemHeight: 300,
                  loop: true,
                  scrollDirection: Axis.horizontal,
                  onIndexChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => GestureDetector(
                    onTapDown: (_) {
                      setState(() {
                        _scales[index] = 0.99;
                      });
                    },
                    onTapUp: (_) {
                      setState(() {
                        _scales[index] = 1.0;
                      });
                    },
                    child: Transform.scale(
                      scale: _scales[index],
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imagePath[index]),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: const Offset(3, 0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  layout: SwiperLayout.STACK,
                  itemCount: imagePath.length,
                ),
                const SizedBox(height: 25),
                Column(
                  children: [
                    Text(
                      imagePath[_currentIndex].split('/').last.split('_')[0],
                      style: const TextStyle(fontSize: 17, fontFamily: 'Pixeled'),
                    ),
                    Text(
                      imagePath[_currentIndex].split('_')[1].split('.').first,
                      style: const TextStyle(fontSize: 10, fontFamily: 'Pixeled'),
                    ),
                  ],
                ),
                const SizedBox(height: 95),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
