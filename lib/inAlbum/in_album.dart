import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:nomorealbum/screens/poca_list_screen.dart';
import 'package:nomorealbum/screens/ticket_buy_view.dart';
import 'package:provider/provider.dart';
import 'cd_controller.dart';

class inalbumpage extends StatelessWidget {
  const inalbumpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: ChangeNotifierProvider(
        create: (context) => CDController(),
        child: Stack(
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
            CD(),
          ],
        ),
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
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const TicketBuyView();
            }));
          },
          child: Row(
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

class _character extends StatelessWidget {
  const _character({super.key});

  @override
  Widget build(BuildContext context) {
    final cdController = Provider.of<CDController>(context);

    return Positioned(
      bottom: 174, // Adjust this value to position the CD image as desired
      left: 265,
      right: 0,
      child: Transform.rotate(
        angle: cdController.isPlaying ? 30 * 3.141592653589793238 / 180.0 : 20 * 3.141592653589793238 / 180.0, // -20도를 라디안으로 변환
        child: Image.asset(
          'assets/images/rabbit_icon.png',
          width: MediaQuery.of(context).size.width, // Full width of the screen
          fit: BoxFit.contain,
          height: cdController.isPlaying ? 120 : 120,
        ),
      ),
    );
  }
}

class playlist extends StatefulWidget {
  playlist({super.key});

  @override
  _playlistState createState() => _playlistState();
}

class _playlistState extends State<playlist> {
  final Map<String, String> track = {
    '1': 'Attention',
    '2': 'Hype Boy',
    '3': 'Cookie',
    '4': 'Hurt',
  };
  final double bodyfontsize = 9;
  final AudioPlayer player = AudioPlayer();

  @override
  void dispose() {
    player.dispose(); // 리소스 해제
    super.dispose();
  }

  Future<void> playTrack(String trackName) async {
    try {
      await player.setAsset('assets/audios/NewJeans_Attention.mp3');
      player.play();
      Provider.of<CDController>(context, listen: false).play();
    } catch (e) {
      print("Error playing $trackName: $e");
    }
  }

  Future<void> stopTrack() async {
    try {
      await player.setAsset('assets/audios/NewJeans_Attention.mp3');
      player.stop();
      Provider.of<CDController>(context, listen: false).play();
    } catch (e) {
      print("Error stopping: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final cdController = Provider.of<CDController>(context);
    
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const playlist_header(),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: track.length,
                itemBuilder: (context, index) {
                  String key = track.keys.elementAt(index);
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        IconButton(
                          icon: Image.asset(
                            (cdController.isPlaying && key == '1') ? 'assets/images/musicpause_icon.png' : 'assets/images/musicplay_icon.png',
                            height: (cdController.isPlaying && key == '1') ? 12 : 18,
                          ),
                          onPressed: () => {
                            cdController.isPlaying ? stopTrack() : playTrack('Newjeans_Attention')
                          },
                        ),
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

class CD extends StatefulWidget {
  const CD({Key? key}) : super(key: key);

  @override
  _CDState createState() => _CDState();
}

class _CDState extends State<CD> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5), // 한 바퀴 도는 데 필요한 시간
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cdController = Provider.of<CDController>(context);

    // 음악 재생 상태에 따라 애니메이션 시작 또는 정지
    if (cdController.isPlaying) {
      _controller.repeat();  // 무한 반복
    } else {
      _controller.stop();  // 정지
    }

    return Positioned(
      bottom: cdController.isPlaying ? -320 : -485,
      left: 0,
      right: 0,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, child) {
          return Transform.rotate(
            angle: cdController.isPlaying ? _controller.value * 2 * 3.141592653589793 : 0,  // 2파이 = 360도
            child: child,
          );
        },
        child: Image.asset(
          'assets/images/cd_NewJeans.png',
          width: MediaQuery.of(context).size.width, // Full width of the screen
          fit: cdController.isPlaying ? BoxFit.contain : BoxFit.cover,
          height: 700,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
