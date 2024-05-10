import 'package:flutter/material.dart';
import 'package:nomorealbum/screens/album_list_page.dart';
import 'package:nomorealbum/screens/poca_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "no more album",
      home: AlbumListPage(),
    );
  }
}
