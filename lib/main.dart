import 'package:flutter/material.dart';
import 'package:nomorealbum/albumList.dart';
import 'package:nomorealbum/inAlbum/in_album.dart';
import 'package:nomorealbum/screens/poca_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: inalbumpage(),
    );
  }
}
