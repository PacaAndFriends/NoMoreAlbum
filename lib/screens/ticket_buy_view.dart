import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TicketBuyView extends StatelessWidget {
  const TicketBuyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const music_playing(),
              // const SizedBox(height: 10),
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const buy_body(),
                  const SizedBox(height: 50),
                  order_button(
                      image: const AssetImage('assets/images/box.png'),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => DeliveryView()),);
                      },
                      text: '주문하기'),
                ],
              ))
            ],
          ),
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
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
            width: 50,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/images/arrowback.png',
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/album.png',
                  width: 12,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'NewJeans - Attention',
                  style: TextStyle(
                    fontFamily: 'Pixeled',
                    color: Colors.black,
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/coin.png'),
                const Text(
                  '100',
                  style: TextStyle(
                    fontFamily: 'Pixeled',
                    color: Colors.black,
                    fontSize: 8,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class buy_body extends StatelessWidget {
  const buy_body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 15),
          Image.asset('assets/images/album.png', width: 300, height: 300),
          const Text(
            'New Jeans - \'New Jeans\'',
            style: TextStyle(
              fontFamily: 'Galmuri11',
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const Text(
            '발매 기념 팬사인회',
            style: TextStyle(
              fontFamily: 'Galmuri11',
              color: Colors.black,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}

class order_button extends StatelessWidget {
  final ImageProvider image;
  final VoidCallback onPressed;
  final String text;

  const order_button(
      {super.key,
      required this.image,
      required this.onPressed,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.fill,
                  ),
                ),
                width: 143,
                height: 61,
              ),
              Positioned(
                bottom: 1, // 텍스트의 위치 조정
                left: 0,
                right: 0,
                top: 1,
                child: Center(
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'Galmuri11',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ), //SizedBox(height: 8),
      ],
    );
  }
}
