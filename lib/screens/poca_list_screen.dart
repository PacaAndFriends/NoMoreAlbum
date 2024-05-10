import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                          "100,000",
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
                  GestureDetector(
                    onTap: () {
                      _showConfirmPopup(context);
                    },
                    child: const Text(
                      "랜덤 뽑기",
                      style: TextStyle(
                          fontFamily: "Galmuri11",
                          fontSize: 14,
                          decoration: TextDecoration.underline),
                    ),
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

void _showConfirmPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/input_box_confirm.png",
              // width: double.infinity,
            ),
            Positioned(
              // bottom: 20,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  const Text(
                    "포토카드를 뽑으시겠습니까?",
                    style: TextStyle(
                        fontFamily: "Galmuri11",
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/icons/coin.png",
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "10,000",
                    style: TextStyle(fontFamily: "Pixeled", fontSize: 10),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("assets/images/input_button_confirm.png"),
                          const Text(
                            "NO",
                            style: TextStyle(
                                fontFamily: "Galmuri11",
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          _showGetPocaPopup(context);
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                                "assets/images/input_button_confirm.png"),
                            const Text(
                              "YES",
                              style: TextStyle(
                                  fontFamily: "Galmuri11",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}

void _showGetPocaPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/input_button_delivery.png"),
                const Text(
                  "하니 포카 획득!",
                  style: TextStyle(
                      fontFamily: "Galmuri",
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 42,
            ),
            Image.asset(
              "assets/images/14.png",
              fit: BoxFit.contain,
              width: 280,
              height: 430,
            ),
          ],
        ),
      );
    },
  );
}
