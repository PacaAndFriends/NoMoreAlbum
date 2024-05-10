import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomorealbum/screens/poca_list_screen.dart';

class inalbumpage extends StatelessWidget {
  const inalbumpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: const Stack(
        children: [
          Column(
            children: [
              music_playing(),
              music_playing_lyric(),
              prompt_container(),
              menus_and_coins(),
            ],
          ),
          _character(),
          _cd(),
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
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/images/pointer_left.png',
              width: 15,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/music_icon.png',
                  width: 12,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
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
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}

class music_playing_lyric extends StatefulWidget {
  const music_playing_lyric({super.key});

  @override
  _music_playing_lyric_state createState() => _music_playing_lyric_state();
}

class _music_playing_lyric_state extends State<music_playing_lyric> {
  String currentLyric = 'Drop the, drop the question';
  String nextLyric = '(drop it) Want attention!';

  void updateLyric(String newLyric) {
    setState(() {
      currentLyric = newLyric;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 220,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            currentLyric,
            style: const TextStyle(
              fontFamily: 'Pixeled',
              fontSize: 8,
              color: Color(0xFF939393),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            nextLyric,
            style: const TextStyle(
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
      height: 280,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: playlist(),
    );
  }
}

class menus_and_coins extends StatelessWidget {
  final double fontsize = 12;
  final double iconheight = 20;

  const menus_and_coins({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const menus(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/coin_icon.png',
                height: iconheight,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '100',
                style: TextStyle(
                  fontFamily: 'Pixeled',
                  fontSize: fontsize,
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
            Image.asset(
              'assets/images/playlist_icon.png',
              height: iconheight,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Playlist',
              style: TextStyle(
                fontFamily: 'Pixeled',
                fontSize: fontsize,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const PocaListScreen();
            }));
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/pocabook_icon.png',
                height: iconheight,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Photo Card Book',
                style: TextStyle(
                  fontFamily: 'Pixeled',
                  fontSize: fontsize,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/shop_icon.png',
              height: iconheight,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Shop',
              style: TextStyle(
                fontFamily: 'Pixeled',
                fontSize: fontsize,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/inventory_icon.png',
              height: iconheight,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Inventory',
              style: TextStyle(
                fontFamily: 'Pixeled',
                fontSize: fontsize,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/lang_icon.png',
              height: iconheight,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Lang',
              style: TextStyle(
                fontFamily: 'Pixeled',
                fontSize: fontsize,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _cd extends StatelessWidget {
  const _cd({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -485, // Adjust this value to position the CD image as desired
      left: 0,
      right: 0,
      child: Image.asset(
        'assets/images/cd_NewJeans.png',
        width: MediaQuery.of(context).size.width, // Full width of the screen
        fit: BoxFit.cover,
        height: 700,
      ),
    );
  }
}

class _character extends StatelessWidget {
  const _character({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 174, // Adjust this value to position the CD image as desired
      left: 265,
      right: 0,
      child: Transform.rotate(
        angle: 20 * 3.141592653589793238 / 180.0, // -20도를 라디안으로 변환
        child: Image.asset(
          'assets/images/rabbit_icon.png',
          width: MediaQuery.of(context).size.width, // Full width of the screen
          fit: BoxFit.contain,
          height: 120,
        ),
      ),
    );
  }
}

class playlist extends StatelessWidget {
  final Map<String, String> track = {
    '1': 'Attention',
    '2': 'Hype Boy',
    '3': 'Cookie',
    '4': 'Hurt',
  };
  final double bodyfontsize = 9;

  playlist({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const playlist_header(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              // height: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: track.length,
                itemBuilder: (context, index) {
                  String key = track.keys.elementAt(index);
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, // 요소들을 양쪽 끝으로 정렬
                      children: <Widget>[
                        Row(
                          children: [
                            Container(
                              child: Text(
                                '[$key]',
                                style: TextStyle(
                                  fontSize: bodyfontsize,
                                  fontFamily: 'Pixeled',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "${track[key]}",
                                style: TextStyle(
                                  fontSize: bodyfontsize,
                                  fontFamily: 'Pixeled',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/musicplay_icon.png',
                          height: 17,
                        ) // progress
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class playlist_header extends StatelessWidget {
  const playlist_header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.centerLeft,
      child: const Text(
        '~Playlist~',
        style: TextStyle(fontFamily: 'Pixeled', fontSize: 14),
      ),
    );
  }
}
