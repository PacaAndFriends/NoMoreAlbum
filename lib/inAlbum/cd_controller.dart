import 'package:flutter/material.dart';

class CDController extends ChangeNotifier {
  bool _isPlaying = false;

  bool get isPlaying => _isPlaying;

  void play() {
    // _isPlaying = true;
    if (_isPlaying == false) {
      _isPlaying = true;
      notifyListeners();
      print('play');
    } else {
      _isPlaying = false;
      notifyListeners();
      print('stop');
    }
  }

  void stop() {
    _isPlaying = false;
    notifyListeners();
  }
}
