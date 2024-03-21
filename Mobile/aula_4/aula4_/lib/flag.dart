import 'dart:math';

class Flags {
  final Random _random = new Random();
  int _currentCountry = 0;

  final List<String> _flags = [
    "Asia-Afghanistan.png",
    "Asia-Armenia.png",
    "Asia-Azerbaijan.png",
    "Asia-Bahrain.png",
    "Asia-Bangladesh.png",
    "Europe-France.png",
    "Europe-Italy.png",
    "Europe-Ireland.png",
    "Europe-Denmark.png",
    "Europe-Germany.png"
  ];

  Flags() {
    resetGame();
  }

  void resetGame() {
    _flags.shuffle();
    _currentCountry = _random.nextInt(6);
  }

  List<String> getDeck() {
    return _flags.sublist(0, 6);
  }

  String get answer {
    String countryName = _flags[_currentCountry].split("-")[1].split(".")[0];
    return countryName;
  }

  bool checkAnswer(int num) {
    return num == _currentCountry ? true : false;
  }
}
