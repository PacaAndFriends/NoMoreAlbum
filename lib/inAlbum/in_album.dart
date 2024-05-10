import 'package:flutter/material.dart';

class inalbumpage extends StatelessWidget {
  const inalbumpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              music_playing(),
              music_playing_lyric(),
              prompt_container(),
              menus_and_coins(),
            ],
          ),
          Positioned(
            bottom: -475, // Adjust this value to position the CD image as desired
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/cd_NewJeans.png',
              width: MediaQuery.of(context).size.width, // Full width of the screen
              fit: BoxFit.cover,
              height: 700,
            ),
          ),
        ],
      ),
    );
  }
}

class music_playing extends StatelessWidget {
  const music_playing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/images/pointer_left.png', width: 15,),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/music_icon.png', width: 12,),
                SizedBox(width: 10,),
                Text(
                  'New Jeans - Attention',
                  style: TextStyle(
                    fontFamily: 'Pixeled',
                    color: Colors.black,
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20,),
        ],
      ),
    );
  }
}

class music_playing_lyric extends StatelessWidget {
  const music_playing_lyric({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      height: 80,
      width: 220,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Drop the, drop the question',
            style: TextStyle(
              fontFamily: 'Pixeled',
              fontSize: 8,
              color: Color(0xFF939393),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 7,),
          Text(
            '(drop it) Want attention',
            style: TextStyle(
              fontFamily: 'Pixeled',
              fontSize: 8,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class prompt_container extends StatelessWidget {
  const prompt_container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3,),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}

class menus_and_coins extends StatelessWidget {
  const menus_and_coins({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          menus(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/coin_icon.png', height: 20,),
              SizedBox(width: 10,),
              Text(
                '100',
                style: TextStyle(
                  fontFamily: 'Pixeled',
                  fontSize: 12,
                ),
              ),
            ],
          ), // coin
        ],
      ),
    );
  }
}

class menus extends StatelessWidget {
  final double fontsize = 12;
  final double iconheight = 20;

  const menus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/playlist_icon.png', height: this.iconheight,),
            SizedBox(width: 10,),
            Text(
              'Playlist',
              style: TextStyle(
                fontFamily: 'Pixeled',
                fontSize: this.fontsize,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/pocabook_icon.png', height: this.iconheight,),
            SizedBox(width: 10,),
            Text(
              'Photo Card Book',
              style: TextStyle(
                fontFamily: 'Pixeled',
                fontSize: this.fontsize,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/shop_icon.png', height: this.iconheight,),
            SizedBox(width: 10,),
            Text(
              'Shop',
              style: TextStyle(
                fontFamily: 'Pixeled',
                fontSize: this.fontsize,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/inventory_icon.png', height: this.iconheight,),
            SizedBox(width: 10,),
            Text(
              'Inventory',
              style: TextStyle(
                fontFamily: 'Pixeled',
                fontSize: this.fontsize,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/lang_icon.png', height: this.iconheight,),
            SizedBox(width: 10,),
            Text(
              'Lang',
              style: TextStyle(
                fontFamily: 'Pixeled',
                fontSize: this.fontsize,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
