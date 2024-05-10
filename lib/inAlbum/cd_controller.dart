import 'package:flutter/material.dart';

class CDController extends ChangeNotifier {
  bool _isPlaying = false;

  bool get isPlaying => _isPlaying;

  void play() {
    _isPlaying = true;
    notifyListeners();
  }

  void stop() {
    _isPlaying = false;
    notifyListeners();
  }
}
