import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _textout = '';
  String get textout => _textout;
  set textout(String value) {
    _textout = value;
  }

  String _imgout = '';
  String get imgout => _imgout;
  set imgout(String value) {
    _imgout = value;
  }
}
