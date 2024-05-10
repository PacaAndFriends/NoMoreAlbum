import 'package:flutter/material.dart';
import 'package:nomorealbum/widgets/poca_list.dart';

class PocaListScreen extends StatelessWidget {
  const PocaListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/icons/Pointer_Left.png", width: 30),
                    const Text(
                      "My POCA",
                      style: TextStyle(fontFamily: "Pixeled", fontSize: 12),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/coin.png", width: 16),
                        const Text(
                          "100",
                          style: TextStyle(fontFamily: "Pixeled", fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/icons/photo_book.png",
                    width: 26,
                    height: 26,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "랜덤 뽑기",
                    style: TextStyle(
                        fontFamily: "Galmuri11",
                        fontSize: 14,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              const SizedBox(
                height: 26,
              ),
              PoCaList(),
            ],
          ),
        ),
      ),
    );
  }
}
